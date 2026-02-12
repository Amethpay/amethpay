const functions = require("firebase-functions");
const admin = require("firebase-admin");
const { Resend } = require("resend");
admin.initializeApp();

const kFcmTokensCollection = "fcm_tokens";
const kPushNotificationsCollection = "ff_push_notifications";
const firestore = admin.firestore();

const kPushNotificationRuntimeOpts = {
  timeoutSeconds: 540,
  memory: "2GB",
};

exports.addFcmToken = functions.https.onCall(async (data, context) => {
  if (!context.auth) {
    return "Failed: Unauthenticated calls are not allowed.";
  }
  const userDocPath = data.userDocPath;
  const fcmToken = data.fcmToken;
  const deviceType = data.deviceType;
  if (
    typeof userDocPath === "undefined" ||
    typeof fcmToken === "undefined" ||
    typeof deviceType === "undefined" ||
    userDocPath.split("/").length <= 1 ||
    fcmToken.length === 0 ||
    deviceType.length === 0
  ) {
    return "Invalid arguments encoutered when adding FCM token.";
  }
  if (context.auth.uid != userDocPath.split("/")[1]) {
    return "Failed: Authenticated user doesn't match user provided.";
  }
  const existingTokens = await firestore
    .collectionGroup(kFcmTokensCollection)
    .where("fcm_token", "==", fcmToken)
    .get();
  var userAlreadyHasToken = false;
  for (var doc of existingTokens.docs) {
    const user = doc.ref.parent.parent;
    if (user.path != userDocPath) {
      // Should never have the same FCM token associated with multiple users.
      await doc.ref.delete();
    } else {
      userAlreadyHasToken = true;
    }
  }
  if (userAlreadyHasToken) {
    return "FCM token already exists for this user. Ignoring...";
  }
  await getUserFcmTokensCollection(userDocPath).doc().set({
    fcm_token: fcmToken,
    device_type: deviceType,
    created_at: admin.firestore.FieldValue.serverTimestamp(),
  });
  return "Successfully added FCM token!";
});

exports.sendPushNotificationsTrigger = functions
  .runWith(kPushNotificationRuntimeOpts)
  .firestore.document(`${kPushNotificationsCollection}/{id}`)
  .onCreate(async (snapshot, _) => {
    try {
      // Ignore scheduled push notifications on create
      const scheduledTime = snapshot.data().scheduled_time || "";
      if (scheduledTime) {
        return;
      }

      await sendPushNotifications(snapshot);
    } catch (e) {
      console.log(`Error: ${e}`);
      await snapshot.ref.update({ status: "failed", error: `${e}` });
    }
  });

async function sendPushNotifications(snapshot) {
  const notificationData = snapshot.data();
  const title = notificationData.notification_title || "";
  const body = notificationData.notification_text || "";
  const imageUrl = notificationData.notification_image_url || "";
  const sound = notificationData.notification_sound || "";
  const parameterData = notificationData.parameter_data || "";
  const targetAudience = notificationData.target_audience || "";
  const initialPageName = notificationData.initial_page_name || "";
  const userRefsStr = notificationData.user_refs || "";
  const batchIndex = notificationData.batch_index || 0;
  const numBatches = notificationData.num_batches || 0;
  const status = notificationData.status || "";

  if (status !== "" && status !== "started") {
    console.log(`Already processed ${snapshot.ref.path}. Skipping...`);
    return;
  }

  if (title === "" || body === "") {
    await snapshot.ref.update({ status: "failed" });
    return;
  }

  const userRefs = userRefsStr === "" ? [] : userRefsStr.trim().split(",");
  var tokens = new Set();
  if (userRefsStr) {
    for (var userRef of userRefs) {
      const userTokens = await firestore
        .doc(userRef)
        .collection(kFcmTokensCollection)
        .get();
      userTokens.docs.forEach((token) => {
        if (typeof token.data().fcm_token !== undefined) {
          tokens.add(token.data().fcm_token);
        }
      });
    }
  } else {
    var userTokensQuery = firestore.collectionGroup(kFcmTokensCollection);
    // Handle batched push notifications by splitting tokens up by document
    // id.
    if (numBatches > 0) {
      userTokensQuery = userTokensQuery
        .orderBy(admin.firestore.FieldPath.documentId())
        .startAt(getDocIdBound(batchIndex, numBatches))
        .endBefore(getDocIdBound(batchIndex + 1, numBatches));
    }
    const userTokens = await userTokensQuery.get();
    userTokens.docs.forEach((token) => {
      const data = token.data();
      const audienceMatches =
        targetAudience === "All" || data.device_type === targetAudience;
      if (audienceMatches && typeof data.fcm_token !== undefined) {
        tokens.add(data.fcm_token);
      }
    });
  }

  const tokensArr = Array.from(tokens);
  var messageBatches = [];
  for (let i = 0; i < tokensArr.length; i += 500) {
    const tokensBatch = tokensArr.slice(i, Math.min(i + 500, tokensArr.length));
    const messages = {
      notification: {
        title,
        body,
        ...(imageUrl && { imageUrl: imageUrl }),
      },
      data: {
        initialPageName,
        parameterData,
      },
      android: {
        notification: {
          ...(sound && { sound: sound }),
        },
      },
      apns: {
        payload: {
          aps: {
            ...(sound && { sound: sound }),
          },
        },
      },
      tokens: tokensBatch,
    };
    messageBatches.push(messages);
  }

  var numSent = 0;
  await Promise.all(
    messageBatches.map(async (messages) => {
      const response = await admin.messaging().sendEachForMulticast(messages);
      numSent += response.successCount;
    }),
  );

  await snapshot.ref.update({ status: "succeeded", num_sent: numSent });
}

function getUserFcmTokensCollection(userDocPath) {
  return firestore.doc(userDocPath).collection(kFcmTokensCollection);
}

function getDocIdBound(index, numBatches) {
  if (index <= 0) {
    return "users/(";
  }
  if (index >= numBatches) {
    return "users/}";
  }
  const numUidChars = 62;
  const twoCharOptions = Math.pow(numUidChars, 2);

  var twoCharIdx = (index * twoCharOptions) / numBatches;
  var firstCharIdx = Math.floor(twoCharIdx / numUidChars);
  var secondCharIdx = Math.floor(twoCharIdx % numUidChars);
  const firstChar = getCharForIndex(firstCharIdx);
  const secondChar = getCharForIndex(secondCharIdx);
  return "users/" + firstChar + secondChar;
}

function getCharForIndex(charIdx) {
  if (charIdx < 10) {
    return String.fromCharCode(charIdx + "0".charCodeAt(0));
  } else if (charIdx < 36) {
    return String.fromCharCode("A".charCodeAt(0) + charIdx - 10);
  } else {
    return String.fromCharCode("a".charCodeAt(0) + charIdx - 36);
  }
}
// Resend email helper
async function sendEmail({ to, subject, html }) {
  const configDoc = await firestore.doc("config/resend").get();
  const apiKey = configDoc.exists ? configDoc.data().api_key : null;
  if (!apiKey) {
    console.log("No Resend API key configured in config/resend. Skipping email.");
    return null;
  }
  const fromEmail = (configDoc.data().from_email) || "AmethPay <onboarding@resend.dev>";
  const resend = new Resend(apiKey);
  const { data, error } = await resend.emails.send({ from: fromEmail, to, subject, html });
  if (error) {
    console.log(`Resend error: ${JSON.stringify(error)}`);
    return null;
  }
  console.log(`Email sent: ${data.id}`);
  return data;
}

// Trigger push notification + email when a new support ticket is created
exports.onSupportTicketCreated = functions
  .firestore.document("support_tickets/{ticketId}")
  .onCreate(async (snapshot, context) => {
    try {
      const ticketData = snapshot.data();
      const userName = ticketData.userName || "A customer";
      const userEmail = ticketData.userEmail || "";
      const description = ticketData.description || "No description";
      const truncatedDesc = description.length > 100
        ? description.substring(0, 100) + "..."
        : description;
      const ticketId = context.params.ticketId;

      // Read config/support for admin refs and admin email
      const configDoc = await firestore.doc("config/support").get();
      if (!configDoc.exists) {
        console.log("No config/support document found. Skipping notification.");
        return;
      }

      const adminUserRefs = configDoc.data().admin_user_refs || "";
      const adminEmail = configDoc.data().admin_email || "";

      // 1. Push notification to admin
      if (adminUserRefs) {
        await firestore.collection(kPushNotificationsCollection).add({
          notification_title: "New Support Request",
          notification_text: `${userName}: ${truncatedDesc}`,
          user_refs: adminUserRefs,
          target_audience: "All",
          initial_page_name: "suport",
          parameter_data: "",
          status: "started",
          created_at: admin.firestore.FieldValue.serverTimestamp(),
        });
        console.log(`Push notification created for ticket: ${ticketId}`);
      }

      // 2. Email to admin
      if (adminEmail) {
        await sendEmail({
          to: [adminEmail],
          subject: `[AmethPay Support] New ticket from ${userName}`,
          html: `
            <h2>New Support Ticket</h2>
            <p><strong>From:</strong> ${userName} (${userEmail})</p>
            <p><strong>Ticket ID:</strong> ${ticketId}</p>
            <p><strong>Description:</strong></p>
            <p>${description}</p>
            <hr>
            <p style="color: #888; font-size: 12px;">This is an automated email from AmethPay Support.</p>
          `,
        });
      }

      // 3. Confirmation email to customer
      if (userEmail) {
        await sendEmail({
          to: [userEmail],
          subject: "We received your support request - AmethPay",
          html: `
            <h2>Hi ${userName},</h2>
            <p>We received your support request and our team will get back to you shortly.</p>
            <p><strong>Your message:</strong></p>
            <blockquote style="border-left: 3px solid #6C63FF; padding-left: 12px; color: #555;">${truncatedDesc}</blockquote>
            <p>Ticket reference: <strong>${ticketId}</strong></p>
            <br>
            <p>Thank you for using AmethPay!</p>
            <p style="color: #888; font-size: 12px;">Please do not reply to this email.</p>
          `,
        });
      }

      console.log(`Support ticket fully processed: ${ticketId}`);
    } catch (e) {
      console.log(`Error processing support ticket: ${e}`);
    }
  });

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
});
