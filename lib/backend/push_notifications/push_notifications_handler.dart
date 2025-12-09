import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.white,
          child: Center(
            child: Image.asset(
              'assets/images/holdings_(10).png',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.contain,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'loginPage': ParameterData.none(),
  'registerAccount': ParameterData.none(),
  'ChangePassword': ParameterData.none(),
  'paymentDetails': (data) async => ParameterData(
        allParams: {
          'transactionDetails':
              getParameter<DocumentReference>(data, 'transactionDetails'),
          'userSpent': getParameter<DocumentReference>(data, 'userSpent'),
        },
      ),
  'notifications': ParameterData.none(),
  'Waitingpage': ParameterData.none(),
  'transactioncompleted': ParameterData.none(),
  'transactionfailure': ParameterData.none(),
  'forgotPasswordexit': ParameterData.none(),
  'homePage': ParameterData.none(),
  'Activity': ParameterData.none(),
  'transferFunds': ParameterData.none(),
  'investments': ParameterData.none(),
  'CryptoWalletBalance': ParameterData.none(),
  'transfercrypto': ParameterData.none(),
  'Activitycrypto': ParameterData.none(),
  'Card': ParameterData.none(),
  'exchange': ParameterData.none(),
  'profile': ParameterData.none(),
  'userdata': ParameterData.none(),
  'suport': ParameterData.none(),
  'privacyPolicy': ParameterData.none(),
  'exchangefailure': ParameterData.none(),
  'completeProfile': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'password': getParameter<String>(data, 'password'),
          'code': getParameter<String>(data, 'code'),
        },
      ),
  'accesskeyverification': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'password': getParameter<String>(data, 'password'),
          'code': getParameter<String>(data, 'code'),
        },
      ),
  'homescreen': ParameterData.none(),
  'loginPagebusiness': ParameterData.none(),
  'registerAccountbusiness': ParameterData.none(),
  'completeProfiebusiness': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'password': getParameter<String>(data, 'password'),
          'code': getParameter<String>(data, 'code'),
        },
      ),
  'ChangePasswordexitBusiness': ParameterData.none(),
  'Waitingpagebusiness': ParameterData.none(),
  'homePagebusiness': ParameterData.none(),
  'transferFundsBusiness': ParameterData.none(),
  'transactionfailurebusiness': ParameterData.none(),
  'Activitybusiness': ParameterData.none(),
  'investmentsbusiness': ParameterData.none(),
  'CryptoWalletBalanceBusiness': ParameterData.none(),
  'transfercryptobusiness': ParameterData.none(),
  'transactionfailurecryptobusiness': ParameterData.none(),
  'Activitycryptobusiness': ParameterData.none(),
  'Cardbusiness': ParameterData.none(),
  'exchangebusiness': ParameterData.none(),
  'exchangefailurebusiness': ParameterData.none(),
  'profilebusiness': ParameterData.none(),
  'userdatabusiness': ParameterData.none(),
  'ChangePasswordBusinessenter': ParameterData.none(),
  'notificationsbusiness': ParameterData.none(),
  'suportbusiness': ParameterData.none(),
  'privacyPolicybusiness': ParameterData.none(),
  'transactionfailurecrypto': ParameterData.none(),
  'Termsandconditionsbusiness': ParameterData.none(),
  'Termsandconditions': ParameterData.none(),
  'termbusiness': ParameterData.none(),
  'term': ParameterData.none(),
  'homescreenbusiness': ParameterData.none(),
  'accesskeyverificationBusiness': (data) async => ParameterData(
        allParams: {
          'email': getParameter<String>(data, 'email'),
          'password': getParameter<String>(data, 'password'),
          'code': getParameter<String>(data, 'code'),
        },
      ),
  'loginPageCopy': ParameterData.none(),
  'homescreenBusiness1': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
