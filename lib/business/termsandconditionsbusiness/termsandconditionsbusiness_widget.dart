import '/components/termsbusiness/termsbusiness_widget.dart';
import '/components/termsbusiness_computer/termsbusiness_computer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termsandconditionsbusiness_model.dart';
export 'termsandconditionsbusiness_model.dart';

class TermsandconditionsbusinessWidget extends StatefulWidget {
  const TermsandconditionsbusinessWidget({super.key});

  static String routeName = 'Termsandconditionsbusiness';
  static String routePath = '/termsandconditionsbusiness';

  @override
  State<TermsandconditionsbusinessWidget> createState() =>
      _TermsandconditionsbusinessWidgetState();
}

class _TermsandconditionsbusinessWidgetState
    extends State<TermsandconditionsbusinessWidget>
    with TickerProviderStateMixin {
  late TermsandconditionsbusinessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandconditionsbusinessModel());

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.tabBarController2 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Container(
                decoration: BoxDecoration(),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Image.network(
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/r6u9acnswmsv/Tela8.png',
                          width: double.infinity,
                          height: 340.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.05, -0.72),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/iclo1yz89uz5/Tela28_transparente.png',
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.87),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              35.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x520E151B),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                        TermsandconditionsbusinessWidget
                                            .routeName);
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.35,
                                                      child:
                                                          TermsbusinessWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '10s4009l' /* Follow */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 80.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.lexend(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFFA74DC9),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 200.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 800.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x320E151B),
                                            offset: Offset(
                                              0.0,
                                              -2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment(0.0, 0),
                                                    child: TabBar(
                                                      labelColor:
                                                          Color(0xFFA74DC9),
                                                      unselectedLabelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                              ),
                                                      unselectedLabelStyle:
                                                          TextStyle(),
                                                      indicatorColor:
                                                          Color(0xFFA74DC9),
                                                      tabs: [
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'p8deddwq' /* Conditions */,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'ki6qyx0u' /* Privacy Policy */,
                                                          ),
                                                        ),
                                                      ],
                                                      controller: _model
                                                          .tabBarController1,
                                                      onTap: (i) async {
                                                        [
                                                          () async {},
                                                          () async {}
                                                        ][i]();
                                                      },
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: TabBarView(
                                                      controller: _model
                                                          .tabBarController1,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          5.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4B111417),
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .network(
                                                                          'General Terms and Conditions of Use of Amethpay These terms constitute a framework agreement that sets out the terms of:  (a) You and us entering into Amethpay transactions; and  (b) Using the Amethpay Control Panel and other Amethpay services.  Before you can carry out transactions and benefit from Amethpay services, it is necessary to:  Read these Terms and check the box confirming the accuracy of the information provided and your acceptance and agreement with these Terms; and  Provide us with the documentation, photographs, and information that we may reasonably request to comply with our regulatory obligations. 1. General Information 1.1. You must confirm and provide valid, accurate, and correct information to us. If any information provided changes, you must notify us and update such information immediately. You will be responsible for any invalid, inaccurate, or incorrect information you may have provided us. We will not be liable for any losses arising from your failure to keep the information updated. 1.2. Your information will be stored and protected according to the terms of the Privacy Policy and as set out in Section 29. 1.3. These Terms incorporate by reference the Website Terms, the Cookies Policy, the Privacy Policy, the Amethpay Cardholder Terms, the Mobile App Terms, and any supplements thereto. By accepting and agreeing to these Terms, you also agree to the Website Terms, the Cookies Policy, the Privacy Policy, the Amethpay Cardholder Terms, the Mobile App Terms, and any supplements, all available on the website. 1.4. By accepting and agreeing to these Terms, you also understand and agree that your information will be shared with regulatory bodies. 1.5. Amethpay reserves the right to provide some or all of the Products and Services described herein. If a Product or Service is not offered in your jurisdiction, then the parts of these Terms related to such Product or Service will not apply to you. 1.6. Terms that start with capital letters are defined terms listed at the end of these Terms in Annex 1. 2. Regulatory Information 2.1. These Terms are between you (the “User,” “you,” or “your”) and Amethyst Ue Spolka Zoo. (\"Amethpay\"). 2.2. Amethpay is a limited liability company, registered in the KRS No. 0000750733, NIP No. 8992851342, REGON No. 38142116600000, with its head office at Krawiecka, No. 3/5, Wroclaw, Poland, ZIP Code 50-148. 2.3. Amethpay is regulated as a Principal Payment Institution by the Komisja Nadzoru Finansowego (KNF) to conduct business providing Account Issuance Services, Domestic Money Transfer Services, Cross-border Money Transfer Services, Digital Payment Token Services, Merchant Acquisition Services, and Electronic Money Issuance Services. You can verify this information on the KNF website (https://www.knf.gov.pl). As a regulated entity, Amethpay is required to comply with all applicable laws, regulations, notices, and guidelines issued by the relevant government and regulatory authority. 2.4. Users are advised to read these Terms carefully. 3. Commencement, Term, and Funding of your Amethpay Account 3.1. These Terms will commence on the day Amethpay confirms to you, via the Mobile App, that your Amethpay Account has been approved, and will continue until terminated in accordance with Clause 32 (Changes to these Terms) and/or Clause 35 (Termination). 3.2. Your Electronic Money Account is an account issued by Amethpay in which the Electronic Money that Amethpay issued to you in exchange for receiving money from you or on your behalf is stored. The Electronic Money in your Amethpay Electronic Money Account can be used by you to enter into:  Control Panel Transactions; and  Amethpay Card Transactions. 3.3. You may be required to provide supplementary information to us to use all available functionalities. 3.4. When we hold Electronic Money for you, holding the funds corresponding to the Electronic Money is not the same as a bank holding money for you, as:  (a) we cannot and will not use the funds to invest or lend to others;  (b) your Electronic Money will not earn interest; and  (c) your Electronic Money is not covered by the Deposit Insurance Scheme. The funds corresponding to the Electronic Money will be held in one or more segregated bank accounts separately from our own funds. 3.5. We safeguard the funds in your Amethpay Electronic Money Account (or “Customer Money”) in fiduciary accounts held with our Safeguarding Institutions. The Customer Money of our users is pooled in these fiduciary accounts and held in trust by Amethpay for our users. Our creditors cannot exercise any right of offset against these fiduciary accounts for any debt we owe, and the fiduciary accounts are distinguishable and kept separately from any other account where we deposit our own money. All interest earned on the fiduciary account will accrue to Amethpay and is not payable to users. 3.6. You can store multiple currencies in your Amethpay Electronic Money Account. These currencies are subject to change from time to time. 4. Termination of Your Access 4.1. We may suspend your access to the Amethpay Control Panel and/or the Amethpay Card for reasonable security reasons and as permitted by applicable laws. If we suspend your access under these circumstances, we will notify you via the Mobile App and direct you to our customer service team through the chat function in the Amethpay Control Panel. 5. The Amethpay Control Panel 5.1. The Amethpay Control Panel is our portal where you can, among other things:  Recharge your Amethpay Account via Electronic Money Exchanges, Instant Transfers, and Amethpay Bank Transfers, including recurring transfers (once all charges displayed on the Amethpay Control Panel are accepted) to and from your Amethpay Account;  Access systems to contract a Zloty exchange for USD or Euro via a Currency Exchange Transaction performed by Amethpay and transfer Zloty for USD or Euro to your Amethpay Electronic Money Account;  Transfer funds from your Amethpay Account to another User Bank Account;  Verify and accept or decline Instant Transfers to and from your Amethpay Account;  Verify your identity with us;  View your Amethpay Transaction History; View the balance and currency of the Electronic Money you hold in your Amethpay Electronic Money Account and the funds you hold in your Amethpay Account;  Enable or disable your Amethpay Physical Card or Amethpay Virtual Card, change the PIN of your Amethpay Physical Card or Amethpay Virtual Card, and access other security features;  Enable and disable location tracking; and  Enter the details of your User Bank Account and your Stored Cards. 5.2. You can access the Amethpay Control Panel via the Mobile App. 6. Your Amethpay Card 6.1. If you register as a Standard User, once accepted as an Amethpay Account holder, we will allow you to issue your Amethpay Card, subject to any applicable fees as set out in the Fee Page and the Amethpay Cardholder Terms. 6.2. Your use of the Amethpay Card is subject to the Amethpay Cardholder Terms and the laws and regulations applicable to the Amethpay Card in Poland. 6.3. You can activate and deactivate a Physical and Virtual Amethpay Card using the Amethpay Mobile App. Failure to disable the Physical or Virtual Amethpay Card upon learning that it has been lost or stolen may mean that you lose your right to any compensation for an unauthorized Amethpay Transaction. 6.4. Funds in any currency other than Reais, loaded onto your Amethpay Card, will be held by Amethpay in your Amethpay Account (more information in Clause 8). 7. Identity Verification 7.1. You agree to cooperate with all requests made by us or by any of our third-party service providers on our behalf in connection with your Amethpay Account, to identify or authenticate your identity or validate your funding sources or Amethpay Transactions. This may include but is not limited to, asking you for more information that reasonably allows us to identify you, including requiring you to take steps to confirm ownership of your phone number or payment instruments or verify your information against third-party databases or other sources. All your data will be secure and protected under the terms set out in our Privacy Policy. 7.2. We reserve the right to terminate, suspend, or limit access to your Amethpay Account, Amethpay Electronic Money Account, and/or Amethpay Services if we cannot obtain or verify this information or you do not comply with our requests under Clause 7.1 of these Terms. 7.3. We may confidentially verify the information you provide to us or obtain information about you ourselves or through third parties in secure databases. Some of the checks we or a third party may conduct, such as a credit check, may leave a soft mark on your credit history. This will not affect your credit rating. By entering into these Terms, you confirm that you consent to us or a third party on our behalf carrying out such checks and understand that these checks are indispensable for us to provide our services to you. 7.4. You must ensure that the information on your Amethpay Account is always accurate and up to date. If at any time we believe your information is outdated or inaccurate, we may contact you and request more information or ask you to go through the verification process again. Your Amethpay transaction limit will be adjusted as we verify your identity. 8. Recharges to Your Amethpay Electronic Money Account 8.1. To recharge Electronic Money in your Amethpay Electronic Money Account, you will need to make a recharge via any method that we make available to you from time to time. 8.2. We may, at our reasonable discretion (e.g., without limitation, to limit fraud or credit risk), impose limits on the amount of money you can receive through Amethpay Services. To increase your receiving limit, you must provide us with any supplementary information we request. If you have a recharge limit on your Amethpay Electronic Money Account, you will be able to view it by logging into the Amethpay Control Panel and accessing the Profile section. 8.3. Where available in the Amethpay Control Panel, you can also fund your Amethpay Electronic Money Account by making a User Bank Transfer or a Third-Party Bank Transfer. 8.4. In relation to Clause 8.3 above, upon our receipt of the amount sent via User Bank Transfer (made within or outside the Amethpay Control Panel) or a Third-Party Bank Transfer, we will issue the corresponding amount of Electronic Money to your Amethpay Electronic Money Account. The bank account details (belonging to Amethpay) to send the money will be set out in the Amethpay Control Panel. Please take care (or ask the third party making the Third-Party Bank Transfer to take care) to enter the correct bank account details when making the User Bank Transfer or Third-Party Bank Transfer, to ensure the money reaches us. If we receive your money in a currency different from the currency you indicated when we provided the bank account details, we will not be liable for any losses you incur if our bank performs a currency conversion to change the money received to the currency of our bank account to which the money was sent. 9. Amethpay Transactions 9.1. The following are “Amethpay Control Panel Transactions”:  “Electronic Money Exchange” means using Electronic Money in your Amethpay Electronic Money Account, in one currency, to buy Electronic Money in another currency using our Exchange Rates;  “Instant Transfer” – this means sending Electronic Money to your Amethpay Electronic Money Account or from your Amethpay Electronic Money Account to another User’s Amethpay Electronic Money Account;  and “Amethpay Bank Transfer” – this means redeeming Electronic Money in your Amethpay Electronic Money Account, with or without an associated Currency Exchange, and transferring the equivalent amount of money to the Counterparty Bank Account. 9.2. The following are “Amethpay Card Transactions”:  “ATM Withdrawal” – this means using your Amethpay Physical Card and the Card PIN to obtain cash internationally from an ATM with or without a Currency Exchange occurring; and  “Amethpay Card Purchase” – this means using your Amethpay Card to buy goods and/or services from a merchant by entering your Amethpay Card details and/or your Card PIN. 9.3. Amethpay may refuse to carry out an Amethpay Transaction with you at any time and for any reason. 9.4. Amethpay provides virtual receipts for successful Amethpay Transactions (including Instant Transfer and Bank Transfer transactions) carried out by you. These transactions are also accessible in the Amethpay Control Panel and are available via email. In addition to virtual receipts, merchants must provide receipts when you carry out an Amethpay Card Purchase. Amethpay will not provide and is under no obligation to provide you with a physical receipt or other written confirmation in connection with any Amethpay Transaction. 10. Exchange 10.1. You can exchange Electronic Money in your Amethpay Electronic Money Account for Electronic Money in another currency using the exchange function in the Amethpay Control Panel. The currencies of Electronic Money you can buy and store in your Amethpay Electronic Money Account are limited to those set out in the Amethpay Control Panel and are subject to change from time to time without our needing to notify you. 10.2. Zloty can only be converted from your Amethpay Account to Euro or USD by a Currency Exchange Transaction performed by Amethpay, which transfers your USD to your Amethpay Electronic Money Account. USD can be converted into Zloty only from your Amethpay Electronic Money Account to your Amethpay Account. The only Currency Exchange Transaction you can contract is for Availability or return of Availability. Amethpay is responsible for performing the Currency Exchange Transactions you request through the Amethpay Control Panel. 10.3. Any exchange of currencies to and from Poland will be subject to applicable Polish tax and currency exchange laws and regulations. 10.4. You will be informed, in the Amethpay Control Panel, before submitting your request to perform the Currency Exchange Transaction or Electronic Money Exchange, of:  The amount of Electronic Money you will use to buy the value of Electronic Money in the desired currency;  The amount and currency of the Electronic Money you wish to buy;  The Exchange Rate for the Electronic Money Exchange; and  Applicable IOF taxes and their respective amounts. 10.5. To submit your request for a Currency Exchange Transaction or Electronic Money Exchange, you will need to confirm the details that have been entered by tapping the exchange button in the relevant part of the Amethpay Control Panel. 10.6. By entering into these Terms, you accept sole responsibility for performing the Currency Exchange Transaction or Electronic Money Exchange. Amethpay will not be liable for any losses you incur as a result of using this function. 10.7. The request to perform a Currency Exchange Transaction or Electronic Money Exchange will be accepted by us when we confirm to you that the Currency Exchange Transaction or Electronic Money Exchange has been performed in the Amethpay Control Panel. 10.8. The amount of Electronic Money you can exchange from your Amethpay Electronic Money Account at the Amethpay exchange rate is limited. Please refer to the Fees and Pricing Terms for more information on the Amethpay exchange rate. It is your responsibility to stay informed about any changes to the limits and fees applied to any exchanges at the Amethpay exchange rate. 10.9. You can transfer funds to your Amethpay Account by transfer, and it will be processed during Polish business hours. 11. Instant Transfer 11.1. From your Amethpay Electronic Money Account, you can send money to and receive money from other Amethpay accounts. We call these types of payments Instant Transfers. You can make an Instant Transfer to another Amethpay User’s account by selecting them as a recipient from the contacts list in the Amethpay app and following the instructions. The Amethpay User recipient will receive the transfer immediately. 11.2. Where applicable, you will need to enter the Counterparty details requested in the Amethpay Control Panel (the \'unique identifier\') to request entry into an Instant Transfer. It is your responsibility to ensure that the Counterparty’s unique identifier is entered correctly. Any error may result in the Instant Transfer being unsuccessful or delayed. We will not be liable for any losses you incur by entering an incorrect unique identifier. 11.3. If the Counterparty is already an Amethpay User, you will be informed in the Amethpay Control Panel, before confirming your request to enter the Instant Transfer, of:  The Counterparty’s name;  The amount and currency of the Electronic Money you wish to send to the Counterparty; and  The fees for the Instant Transfer (if any). 11.4. To submit the request for entry into the Instant Transfer, you will need to confirm the details that have been entered by tapping the button entitled “Send” in the relevant part of the Amethpay Control Panel. Once you have provided confirmation (provided the Counterparty is an Amethpay User), at this point we will be deemed to have received your request for entry into the Instant Transfer. 11.5. If the Counterparty is not an Amethpay User, then the request for entry into the Instant Transfer will remain pending for 24 hours (excluding weekends and holidays in Poland). The request for entry into the Instant Transfer will not be deemed received until the Counterparty is approved as an Amethpay User, within the 24 hours (excluding weekends and holidays in Poland) during which the Instant Transfer is pending. The Counterparty will receive an SMS with instructions on how to open an Amethpay Account. You authorize Amethpay to send an SMS to the Counterparty on your behalf. If the Counterparty does not sign up for Amethpay within 24 hours of the SMS being sent, the pending Instant Transfer will be canceled. 11.6. If the Counterparty is not an Amethpay User, then:  The request for entry into the Instant Transfer will remain pending and will not be deemed received by us until the non-Amethpay User is accepted as an Amethpay User;  The Instant Transfer must be completed no later than the end of the next Business Day following the day on which the Counterparty becomes an Amethpay User, provided the Counterparty becomes an Amethpay User before the pending Instant Transfer expires. 11.7. Once your Electronic Money has been sent, you will be able to view the completed Instant Transfer in the Amethpay Transaction History section of the Amethpay Control Panel. 12. Amethpay Bank Transfer and Currency Exchange 12.1. You can make a request to enter into an Amethpay Bank Transfer from your Amethpay Electronic Money Account by logging into the Amethpay Control Panel and following the on-screen instructions. You will need to enter the Counterparty Bank Account details. It is your responsibility to ensure that the Counterparty and Counterparty Bank Account details (the \'unique identifiers\') are entered correctly. Any error in the information may result in the Amethpay Bank Transfer being unsuccessful or delayed. We will not be liable for any losses you incur by entering incorrect Counterparty Bank Account details. 12.2. You will be informed in the Amethpay Control Panel, before confirming your request to enter the Amethpay Bank Transfer, of:  The Counterparty Bank Account details;  The amount and currency of the money you wish to send to the Counterparty; and  The fees for the Amethpay Bank Transfer (if any). 12.3. To submit the request for entry into the Amethpay Bank Transfer, you will need to confirm the details that have been entered by tapping the \'confirm\' button in the relevant part of the Amethpay Control Panel. 12.4. The request for entry into the Amethpay Bank Transfer or an Amethpay Bank Transfer via recurring payments will be deemed received at the time you provide your confirmation, except where the request for entry into an Amethpay Bank Transfer is deemed received on a day other than a Business Day or is received after 4:00 p.m. Polish time on a Business Day, in which case we are entitled to treat the request for entry into the Amethpay Bank Transfer as having been received on the next Business Day. 12.5. When the Payment is denominated in Zloty, or a currency other than Zloty, we will use all reasonable efforts to ensure that we execute the Amethpay Bank Transfer as soon as possible, and in any case, within 3 Business Days for domestic bank transfers within Poland and 7 Business Days for cross-border bank transfers. 12.6. For transfers to the Amethpay Account, refer to Clause 10.9. 12.7. If the Counterparty Bank Account currency (according to the information provided by you in the Amethpay Control Panel) is different from the currency of the Electronic Money you are using to enter the Amethpay Bank Transfer, then as part of the Amethpay Bank Transfer, we will perform a Currency Exchange to the appropriate currency before sending the money to the Counterparty Bank Account. In this case, you will be informed of the Exchange Rate for the Currency Exchange before confirming the Amethpay Bank Transfer. 12.8. You can revoke your request for entry into the Amethpay Bank Transfer at any time before the end of the Business Day prior to the date on which the Amethpay Bank Transfer is scheduled to take place. 12.9. Where applicable, you can revoke your request for entry into a recurring payment via Amethpay Bank Transfer at any time before the end of the Business Day prior to the date on which the recurring Amethpay Bank Transfer payment is scheduled to take place. 12.10. Once the Amethpay Bank Transfer is complete, you will be able to view the completed Amethpay Bank Transfer in the Amethpay Transaction History section of the Amethpay Control Panel. 12.11. If for any reason the funds are not deposited into the Counterparty Bank Account and are returned to Amethpay, they will be converted into the currency of the Electronic Money from which they were originally withdrawn. Due to the price difference for buying and selling currencies and/or fluctuations in exchange rates, the amount of Electronic Money you receive back in your Amethpay Electronic Money Account may be higher or lower than the amount originally redeemed to perform the Amethpay Bank Transfer. Amethpay is not responsible for any losses you incur in this regard. 12.12. Some Counterparties accept payment by setting up recurring payments to be deducted from your Amethpay Electronic Money Account regularly. The amount of the recurring payment and the intervals at which payments will be deducted are determined by the agreement between you and the relevant Counterparties, and their terms and conditions will apply. If you wish to amend or cancel your recurring payment, you can only do so by contacting the Counterparties directly. 13. ATM Withdrawal and Currency Exchange 13.1. You can use your Amethpay Physical Card to withdraw cash from ATMs, including internationally, from ATMs in countries outside of Poland. In this case, we will redeem Electronic Money in your Amethpay Electronic Money Account and you will receive the equivalent amount in cash. You will need to follow the instructions on the ATM machine to perform the ATM Withdrawal. This may involve entering your Card PIN. 13.2. We do not charge for ATM Withdrawals up to the limit set out on the Fees Page. If you withdraw more than the limit, then each ATM Withdrawal will be subject to the fee set out on the Fees Page. 13.3. If you choose to withdraw cash in a currency different from the currency for which you have sufficient Electronic Money in your Amethpay Electronic Money Account, our Exchange Rate will apply. 13.4. If you choose to withdraw cash using the currency conversion offered by the ATM owner, Amethpay has no responsibility for that currency conversion. Note that the ATM provider may, in addition, charge its fee for ATM Withdrawals, over which we have no control or responsibility. 14. Amethpay Card Purchase and Currency Exchange 14.1. You can use your Amethpay Card to buy goods and/or services from a merchant, whether online or at a point-of-sale terminal anywhere that accepts the Amethpay Card. In this case, we will redeem Electronic Money in your Amethpay Electronic Money Account, and the merchant will receive, less any Amethpay fees (acting as the Card Issuer), the equivalent amount in cash. You will need to follow the instructions on the relevant website or point-of-sale machine to perform the Amethpay Card Purchase. This may involve entering your Amethpay Card details (card number, expiry date, and CVC number) or your Card PIN. 14.2. If you choose to be charged for your purchase in a currency different from the currency for which you have sufficient Electronic Money in your Amethpay Electronic Money Account, our Exchange Rate will apply. 14.3. Where a currency conversion is offered to you by the merchant and you choose to authorize the payment transaction based on the merchant’s exchange rate and charges, Amethpay has no responsibility for that currency conversion. You can find more information about this here. 14.4. Please refer to the Amethpay Cardholder Terms for more details. 15. Receipt of Electronic Money 15.1. If you receive funds into the Amethpay Account or Electronic Money into your Amethpay Electronic Money Account, we will send a notification to the Amethpay Control Panel and display the payment in your Amethpay Transaction History. 15.2. You can request a payment from another Amethpay User to your Amethpay Electronic Money Account using the \"Request Money\" function or the \"Split Bill\" function or other functions made available to you from time to time in the Amethpay Control Panel. You should only use this function for amounts owed to you and due for full payment. This service cannot be used as a debt collection or enforcement tool. 16. Exchange Rates 16.1. The \"Exchange Rate\" means the:  \"Standard Exchange Rate\";  \"Non-Standard Exchange Rate\";  16.2 Depending on the amount of Currency Exchange Transactions, Electronic Money Exchanges, and Currency Exchanges conducted by you in the given month, more details are set out on the Fees Page. 16.3. Generally, for major currencies during forex market hours, the Standard Exchange Rate will be the Amethpay exchange rate. However, in certain circumstances, it is not possible for the Standard Exchange Rate to be the Amethpay exchange rate, including when the forex market is closed on weekends or holidays, or when your Exchange Rate involves illiquid currencies. It may also not be possible for the Standard Exchange Rate to be the Amethpay exchange rate due to other external factors, such as volatile market conditions, Amethpay system failure, or any other external factor. In such cases, the Standard Exchange Rate will differ from the Amethpay exchange rate. Please consider the conditions in Section 1.5 and consult the Fees Page. 16.4. We will use the Exchange Rates set out on the Fees Page, where possible; however, you will be informed (where possible) of the exact Exchange Rate for each Amethpay Transaction before your entry into it. It is your responsibility to ensure you are satisfied with the Exchange Rate we offer before entering each Amethpay Transaction. Additionally, our live exchange rates are available in the Amethpay Control Panel. 16.5. The exchange between Zloty, Euro, and USD is subject to the following limits below:  Euros 9,999.99 (nine thousand nine hundred ninety-nine dollars and ninety-nine cents) per transaction; and  One of the following limits in 12 consecutive months:  Euros 10,000.00 (ten thousand euros) if proof of address is not sent.  Euros 100,000.00 (one hundred thousand euros) upon presentation of proof of address and occasional request for proof of income. 17. Your Balance and Negative Balances 17.1. You acknowledge that balances and funds available reported in the Amethpay Control Panel are only approximate real-time balances, and not settled balances in your Amethpay Electronic Money Account. A real-time balance may not take into account pending debits and credits. Amethpay will provide information on pending debits and credits as soon as it has this information. 17.2. If for any reason (including, but not limited to, technical errors on our part or our third-party providers’ part, due to transactions occurring outside Polish business hours) you have a negative balance in your Amethpay Electronic Money Account, you agree to immediately top up the necessary amount to correct the negative balance, these amounts being due without prior notice. If you do not do so, we may:  Exercise our right of offset in accordance with Clause 22 (Our Right of Offset) of these Terms;  Initiate a chargeback procedure for any specific transaction that led your Amethpay Electronic Money Account to have a negative balance;  Take debt collection measures, including but not limited to, hiring a debt collection agency or lawyers, or seeking a claim in court. We reserve the right to charge you for any expenses we reasonably incur in connection with any debt collection or enforcement efforts;  If Amethpay requests that you complete a top-up to correct a negative balance and you do not do so within 7 Business Days, where applicable, you authorize us to initiate a payment transaction for the amount of the negative balance (or the equivalent in another currency) from one of your Stored Cards or User Bank Accounts (as applicable). 18. Security 18.1. You have an important role to play in ensuring your Amethpay Account is protected from unauthorized access and use by practicing good security hygiene. 18.2. You must ensure that you take all reasonable steps to:  Ensure your mobile phone and mobile PIN are kept secure;  Ensure access to the Amethpay Control Panel is kept secure; and  Ensure your Amethpay Card PIN and other unique numbers (including CVC, expiry date, and card number) are kept secure. 18.3. The requirement in Clause 18.2 includes but is not limited to, you:  Closing the Mobile App or Amethpay application page whenever you are not using it or have finished using it;  Keeping the mobile phone you use to access the Amethpay Control Panel secure and protected, locked with a strong password or other security mechanism;  Not writing down or telling anyone your mobile PIN;  Changing your mobile PIN regularly; If you receive SMS, emails, questionnaires, surveys, or other links requiring you to provide your mobile PIN, not providing your information and contacting our customer service team via the chat function in the Amethpay Control Panel;  Ensuring the mobile phone and email accounts you use to communicate with us are secure and only accessed by you, as your mobile phone and email address can be used to reset your mobile PIN or send information related to the security of the Amethpay Control Panel;  If at any time you believe your mobile PIN has been lost, stolen, or someone else knows your mobile PIN, or someone has access to your email account or mobile phone you use to communicate with us, immediately informing the customer service team via the chat function in the Amethpay Control Panel; Updating the Mobile App to the latest version available for your device, as it may contain security updates; Keeping your Amethpay Card secure;  Not writing down or telling anyone your Amethpay Card PIN or Amethpay Card details; and  Disabling your Amethpay Card via the Amethpay Control Panel or reporting to us at any time if you believe the security of the Amethpay Card is at risk, e.g., if it is lost or stolen. 18.4. All Amethpay Transactions are processed by automated methods, and anyone who obtains access credentials to the Amethpay Control Panel or access to an Amethpay Card can use it to carry out Amethpay Transactions without your permission. While Amethpay has systems in place to detect fraudulent activity, you are responsible for monitoring your Amethpay Account activity. If you notice any misuse, theft, or unauthorized use of your mobile phone, Amethpay Card, mobile PIN, or Card PIN, or any other suspicious activity, you should contact the customer service team and, if possible, enable the appropriate security features in the Mobile App. Where applicable, you may be asked to provide additional information strictly necessary for our review and investigation purposes. If you suspect identity theft or Electronic Money theft, we suggest contacting local authorities. 19. Restrictions on the Use of Amethpay Services 19.1. The following activities are not permitted:  Using Amethpay Services for any illegal purposes, including but not limited to, fraud and money laundering, illegal sexual orientation materials or services, counterfeit products, illegal gambling activities, fraud, money laundering, financing terrorist organizations, illegal purchase or sale of tobacco, firearms, prescription drugs, other controlled substances, or other products prohibited by law. Amethpay will report any suspicious activity and cooperate with any relevant law enforcement or regulatory agency;  Using Amethpay Services to abuse, exploit, or circumvent usage restrictions imposed by a merchant on the services they provide, or to obtain goods or services without paying the full or partial amount due;  Violating these Terms, the Amethpay Cardholder Terms (as applicable), or any other agreement or policy you have agreed to with Amethpay or Amethpay (acting as the Card Issuer);  Creating more than one Amethpay Account without our prior written consent;  Using Amethpay Services to violate any law, statute, ordinance, or regulation;  Using Amethpay Services for any illegal purposes, including purchasing or selling, or facilitating the purchase or sale of, illegal goods or services;  Using Amethpay Services to conduct activities related to adult entertainment/pornography, auction houses, charities, chemicals and related products, dating and escort services, binary options, legal services, political or religious organizations, video game arcades or establishments, and businesses claiming to trade primary bank guarantees, debentures, letters of credit, or medium-term notes;  Infringing on the copyrights, patents, trademarks, trade secrets, or other intellectual property rights of Amethpay or third parties, or publicity or privacy rights;  Acting in a defamatory, libelous, threatening, or harassing manner when using Amethpay Services;  Providing us with false, inaccurate, or misleading information;  Using Amethpay Services to engage in debt collection activities;  Instructing us to send or receive funds that we reasonably believe are potentially fraudulent on your behalf;  Attempting to receive or knowingly and intentionally receiving funds from both Amethpay and a merchant for the same Amethpay Transaction;  Controlling an Amethpay Account that is linked to another Amethpay Account that has engaged in any of these Restricted Activities;  Conducting your business or using Amethpay Services in a manner that could result or could result in claims, disputes, chargebacks, fees, fines, penalties, or other liabilities for Amethpay, other Users, third parties, or yourself;  Using your Amethpay Account or Amethpay Services in a manner that Amethpay (acting as the Card Issuer), Visa, MasterCard, American Express, Discover, or any other electronic funds transfer network reasonably believes to be an abuse of the system or a violation of the card association or network rules;  Allowing any of the currencies in your Amethpay Electronic Money Account to have a negative balance;  Providing yourself with a cash advance from your credit card (or helping others do so);  Taking any action that imposes an unreasonable or disproportionately large load on our infrastructure;  facilitating any viruses, Trojan horses, worms, or other computer programming routines that may damage, detrimentally interfere with, surreptitiously intercept, or expropriate any system, data, or information;  using an anonymous proxy;  using any robot, spider, other automatic device, or manual process to monitor or copy our Site without our prior written permission;  or interfering or attempting to interfere with Amethpay Services;  Taking any action that could cause us to lose any of the services of our Internet service providers, payment processors, or other suppliers;  Using Amethpay Services to test credit card behaviors; Circumventing any Amethpay policy or determination regarding your Amethpay Electronic Money Account, including but not limited to, attempting to create a new or additional Amethpay Account when an Amethpay Electronic Money Account has a negative balance or has been restricted, suspended, or otherwise limited;  Creating new or additional Amethpay Electronic Money Accounts using information that is not yours (e.g., name, address, email address, etc.);  Or using someone else’s Amethpay Electronic Money Account;  Harassing our employees, agents, or other Users;  Refusing to cooperate in an investigation or providing confirmation of your identity or any information you provided to us;  Using Amethpay Services in a manner that we believe may be a violation of any applicable electronic payment network rule, card association rule, or applicable law;  Using Amethpay Services to trade FX for speculative purposes or for FX arbitrage; Refusing or failing to provide more information about yourself or your business activities that we may reasonably request to comply with regulatory obligations or meet compliance specifications, in accordance with applicable regulations and our policies;  Conducting your business or using Amethpay Services in a manner that leads us to receive a disproportionate number of claims or chargebacks; Revealing your mobile PIN or Card PIN to anyone or using someone else’s Amethpay Mobile App or Amethpay Card. 19.2. You must ensure that you only enter into Amethpay Transactions related to the sale or supply of goods and services in compliance with all applicable laws and regulations. The fact that a person or entity accepts payments via Amethpay Transaction is not an indication of the legality of providing or supplying the goods and services. 19.3. We reserve the right to refuse to carry out an Amethpay Transaction directly or indirectly associated with any Restricted Country. 19.4. If Amethpay, in its sole discretion, believes that you may have violated the provision of this Clause, we may take actions to protect ourselves, other Users, and third parties. Actions we may take include, but are not limited to:  Terminating, suspending, or limiting your access to your Amethpay Electronic Money Account or any or all of Amethpay Services;  Contacting other Users who have transacted with you; contacting your bank or credit card issuer; and/or notifying other Users, law enforcement, or impacted third parties about your actions;  Updating inaccurate information you provided us;  Taking legal action against you;  Terminating these Terms or your access to the Site;  Reversing in whole or in part an Amethpay Transaction; and/or  Blocking your access to your Amethpay Electronic Money Account and/or Amethpay Control Panel temporarily or permanently. 19.5. Where possible or required by applicable laws and regulations, Amethpay will provide you with the relevant information about the actions imposed, but we may not be able to do so in accordance with appropriate law, including avoiding disclosing information protected by third parties or interfering with the course of an investigation. 20. Amethpay Transaction Limits 20.1. We reserve the right to impose, at our sole discretion, Amethpay Transaction Limits based on criteria determined by us and which do not need to be disclosed. 20.2. You can view some of these Amethpay Transaction Limits by logging into the Amethpay Control Panel. Amethpay may, from time to time, provide you with procedures or methods to remove or increase these limits. We reserve the right to remove Amethpay Transaction Limits from the Amethpay Control Panel. 21. Suspension of the Use of Amethpay Services 21.1. We reserve the right to change, suspend, or discontinue any aspect of Amethpay Services at any time, including hours of operation or availability of Amethpay Services or any feature of Amethpay Services, without notice and without liability. 22. Our Right of Offset 22.1. In the event of any event that entitles us to be compensated by you (including, but not limited to, negative balances due to transactions occurring outside Business Hours, or any technical errors on our part or our third-party providers\' part), we will have the right to recover any amount owed to us by withholding part or all of the amount you have in your Amethpay Electronic Money Account, deposited with us under any Amethpay Transaction, or otherwise. You will have no similar right of offset. For the avoidance of doubt, this includes if one of the currency balances in your Amethpay Electronic Money Account shows that you owe us an amount of funds for any reason or has a negative balance, Amethpay may offset the amount you owe us using funds you hold in that currency or in a different currency balance or deducting amounts you owe us from money you receive into your Amethpay Electronic Money Account, or money you attempt to withdraw or send from your Amethpay Electronic Money Account, or in a different Amethpay Electronic Money Account that you control and deducting funds from any withdrawal you attempt to make. 22.2. In the event of any event that entitles us to be compensated by you, if for any reason we are unable to exercise our right of offset in accordance with Clause 22.1, we may initiate a payment transaction for the amount we are to be compensated by you from one of your User Bank Accounts. 22.3. If the amount owed to us is in a different currency from the money or Electronic Money you hold with us in your Amethpay Account, we will convert the amount you hold with us in your Amethpay Account to the currency of the amount you owe us by applying our Exchange Rates. We do not need to notify you about this conversion occurring. 23. Our Liability with Respect to Instant Transfers, Amethpay Bank Transfers, ATM Withdrawals, and Amethpay Card Purchases 23.1. You warrant that you are an individual acting solely on your own behalf and are acting for a purpose other than a trade, business, or profession. 23.2. If you believe that an Instant Transfer, Amethpay Bank Transfer, ATM Withdrawal, and/or an Amethpay Card Purchase was executed incorrectly or was not authorized by you, you must inform us as soon as possible via the chat function in the Amethpay Control Panel. 23.3. Where it is established that an Instant Transfer, Amethpay Bank Transfer, ATM Withdrawal, and/or an Amethpay Card Purchase was not authorized by you, or was initiated or executed incorrectly by us (provided we can prove that such incorrect transaction occurred) and you notified us, an Amethpay Bank Transfer, an ATM Withdrawal, or an Amethpay Card Purchase (in this case, within 90 days of the purchase acknowledgment), unless Clause 23.3 applies, we will refund the full amount to your Amethpay Account. 23.4. You will be liable for all losses incurred in relation to an Instant Transfer, an Amethpay Bank Transfer, ATM Withdrawal, and Amethpay Card Purchase performed by us that was not authorized by you if you acted fraudulently or intentionally or with gross negligence failed to comply with the obligations set out in Clause 19 (Security). 24. General Liability 24.1. You can contact us via the chat function in the Amethpay Control Panel. 24.2. We will not be liable for non-performance or defective performance in relation to an Instant Transfer or Amethpay Bank Transfer that we made in accordance with a unique identifier provided by you that proves incorrect. However, we will make reasonable efforts to recover the funds involved in such a transaction and may charge you for doing so, including passing on to you charges made by intermediary banks and/or the beneficiary\'s bank for their assistance in the tracing process. 24.3. We are not liable to you for the correct execution of an Instant Transfer, an Amethpay Bank Transfer, an ATM Withdrawal, or an Amethpay Card Purchase if we can prove to you (and where relevant, to the beneficiary\'s payment service provider) that the beneficiary\'s payment service provider received the payment within the appropriate time. However, at your request, we will make efforts to trace any non-executed or defectively executed payment transactions or any Amethpay Bank Transfers that were correctly executed to an account deemed fraudulent and notify you of any outcome involving our investigation. 24.4. Note that any restriction on your liability in relation to an unauthorized or incorrectly executed payment transaction does not apply to losses arising and/or related to Electronic Money Exchanges or Currency Exchanges. 24.5. We will not be liable for any losses you may incur as a result of losses or costs caused by abnormal and unforeseeable circumstances beyond our reasonable control, which would have been unavoidable despite all efforts to the contrary, which may, for example, include delays or failures caused by issues with another system or network, mechanical failure, or data processing failures. 24.6. We will not be liable for any losses or damages you may incur as a result of loss of profits or any special, incidental, or consequential damages arising out of these Terms or otherwise in connection with Amethpay Services, however arising. 24.7. You are responsible for all liabilities, financial or otherwise, incurred by Amethpay (acting as the Card Issuer), Amethpay, an Amethpay User, or a third party caused by or arising out of your breach of these Terms, your use of Amethpay Services, and any use of your Amethpay Account. You agree to reimburse Amethpay (acting as the Card Issuer), Amethpay, an Amethpay User, or a third party for any and all such liabilities, to the extent not prohibited by applicable law. 24.8. You remain liable under these Terms concerning all charges and other amounts incurred through the use of your Amethpay Account at any time, regardless of termination, suspension, or closure. 24.9. You are solely responsible for understanding and complying with all laws, rules, and regulations of your specific jurisdiction that may be applicable to you in connection with your use of Amethpay Services, including but not limited to those related to export or import activity, taxes, or foreign currency transactions. You are responsible for independently complying with all tax obligations. Amethpay will not be responsible for executing tax obligations or calculating and transferring taxes applied to you. 24.10. You agree to defend, reimburse, or compensate us (known in legal terms as “indemnify”) and hold Amethpay, our third-party providers, our employees, or agents who are authorized to act on our behalf harmless from any claim or demand (including attorney fees) made or incurred by any third party due to or arising out of your breach of these Terms, breach of any law, and/or use of Amethpay Services. 24.11. Nothing in these Terms will operate to exclude liability for death or personal injury or for fraud or fraudulent misrepresentation or for any liability that cannot be excluded or amended under Polish law. 24.12. In no event will Amethpay be liable for loss of profits or any special, incidental, or consequential damages arising out of these Terms or otherwise in connection with Amethpay Services, however arising. 24.13. We are not liable for any losses you incur resulting from your use of the Amethpay Card, which will be solely the responsibility of Amethpay (acting as the Card Issuer) and subject to the Amethpay Cardholder Terms (as applicable). 24.14. To the extent permitted by applicable law, Amethpay is not liable, and you agree not to hold it responsible, for any damages or losses (including but not limited to, loss of money, goodwill or reputation, profits, or other intangible losses, or any special, indirect, or consequential damages) resulting directly or indirectly from:  Your inability to use Amethpay Services for any reason;  Delays or disruptions in Amethpay Services not attributable to Amethpay;  Viruses or other malicious software obtained by accessing the Site or any associated site or service;  Technical problems, bugs, errors, or inaccuracies of any kind in Amethpay Services;  The content, actions, or omissions of third parties;  A suspension or other action taken concerning your Amethpay Account;  Your need to modify practices, content, or behavior, or your loss of business or inability to do so, as a result of changes to these Terms or Amethpay policies; and/or  Illegal actions and operations by third parties carried out using forged and/or illegal documents or data obtained illegally. 25. Withdrawal of Funds 25.1. You can withdraw funds from your Amethpay Electronic Money Account by performing an Amethpay Bank Transfer and selecting a User Bank Account as the Counterparty Bank Account or performing an ATM Withdrawal or using any other method available in the Amethpay Control Panel or as notified to you from time to time. 25.2. Amethpay is not responsible for payment of the withdrawal once the funds are received by your payment service provider, as Amethpay is the payer and not the payment service provider for withdrawals. 25.3. You can withdraw funds from the Amethpay Account by transfer during Polish business hours, provided you make your transfer request with Amethpay by 5:00 p.m., Polish time. Any transfer from your Amethpay Account can only be made to a User Bank Account (i.e., an account held by you, i.e., an account under your registration). 26. Termination of Your Account 26.1. Your Amethpay Account will be terminated at the end of the term of these Terms in accordance with Clause 3.1 or upon termination of these Terms in accordance with Clause 32 (Changes to these Terms) and Clause 35 (Termination). You accept that, upon the termination of your Amethpay Account, Amethpay will store personal data about you and your Amethpay Transactions for the period required by applicable laws in Poland. 26.2. If your Amethpay Electronic Money Account has a balance at the time of termination, we may require you to withdraw your funds within a reasonable period, during which your Amethpay Electronic Money Account will be accessible only for the purpose of withdrawing the remaining balance. Upon the expiration of this period, you will not be able to access your Amethpay Electronic Money Account, but you can withdraw any remaining funds for six years from the date of termination of your Amethpay Account by contacting customer support and requesting that the funds be sent to you, returning the funds via card refund or bank transfer. When your Amethpay Account is terminated, any pending instructions will be canceled. 26.3. You cannot terminate your Amethpay Account to avoid an investigation. If you attempt to terminate your Amethpay Account while Amethpay is conducting an investigation, it may freeze the account to protect all parties involved in Amethpay Services, its affiliates, or a third party against any liability. You will remain responsible for any obligations related to your Amethpay Account even after its termination. 27. Notice and Communications 27.1. You agree and consent to receiving all Communications that we provide in connection with Amethpay Services electronically. We will provide Communications to you by making them available in the Amethpay Control Panel or by sending them by email to the primary email address listed in your Amethpay Account Profile. 27.2. It is your responsibility to enable and monitor the transaction notifications sent to you via the Amethpay Control Panel and registered email account (where applicable). It is your responsibility to ensure you log in regularly to the Amethpay Control Panel and regularly review the Amethpay Control Panel, the Site, and your primary email address and open and review the communications we deliver to you by these means. You are required to review your Amethpay notices and Transaction History and promptly report any questions, apparent errors, or unauthorized Amethpay Transactions. Failure to contact us in a timely manner may result in loss of funds or important rights. 27.3. We may contact you from time to time to notify you of changes or information about your Amethpay Account. It is your responsibility to ensure that you regularly check the Amethpay Control Panel and that your contact information stored in your Amethpay Control Panel profile is up to date. You can contact us under these Terms via the chat function in the Amethpay Control Panel. 28. Data 28.1. To provide Amethpay Services under these Terms, we need to collect information about you. Under data protection law, we are known as the \"data controller\" of your personal information. For more information on how we use your personal information, please see our Privacy Policy. 28.2. By entering into these Terms, you are giving us permission to collect, process, and store your personal information for the purpose of providing our Amethpay Services to you. This does not affect any rights and obligations you or we have under data protection law. 28.3. You can withdraw your permission by terminating your Amethpay Electronic Money Account, which will terminate the agreement between you and us. If you do so, we will stop using your information for the purpose of providing Amethpay Services, but we may need to keep your information for other legal reasons. 29. Intellectual Property 29.1. The Amethpay Control Panel and the Site and all intellectual property rights contained therein, including but not limited to any content, are owned by or licensed to us. Intellectual property rights mean rights such as copyrights, trademarks, domain names, design rights, database rights, patents, and all other intellectual property rights of any kind, whether registered or not (anywhere in the world). Amethpay’s intellectual property includes \"Amethpay.com\", \"Amethpay,\" and all logos related to Amethpay Services. Additionally, all page headers, custom graphics, button icons, and scripts are service marks, trademarks, and/or trade dress of Amethpay. You may not copy, imitate, or use them without our prior written consent. 29.2. We reserve all our rights in any intellectual property in connection with these Terms. This means, for example, that we remain the owners of them and are free to use them as we see fit. 29.3. Nothing in these Terms grants you any legal rights in the Amethpay Control Panel and/or the Site, except as necessary to enable you to access the Amethpay Control Panel. You agree not to adjust or attempt to circumvent or delete any notices contained in the Amethpay Control Panel (including any intellectual property notices) and, in particular, in any digital rights or other security embedded or contained in the Amethpay Control Panel. 30. Customer Support and Complaints 30.1. We take all complaints and inquiries seriously. Any questions about us or feedback/inquiries regarding the services we provide should be directed to the chat function in the Amethpay Control Panel. You can also email support@amethpay.com. 30.2. You have the right to complain if your questions/inquiries are not resolved in the chat function in the Amethpay Control Panel. For this, you can email ouvidoria@amethpay.com or use the Web Form. Our complaints procedure (available on our Site) sets out the process for making and resolving any complaints. You can request a copy of our complaints procedure at any time by contacting customer support via the chat function in the Amethpay Control Panel. A final response to your complaint, or a letter explaining why the final response has not been completed, will be sent to you within 10 Business Days after your complaint has been made. If this is not possible due to unforeseen circumstances or lack of information, we will contact you. 31. Changes to These Terms 31.1. These Terms may be unilaterally changed by us by providing you with one month’s notice. These changes will be deemed accepted by you unless you notify us otherwise before the proposed effective date of the changes. If you notify us otherwise, your notification will be deemed a notice that you wish to terminate your Amethpay Account and terminate these Terms on the date the changes take effect. 31.2. Where a change to the Terms is required by law or relates to the addition of a new service, additional functionality to the existing service, a reduction in the cost of the Services, or any other change that does not reduce your rights or increase your responsibilities, the change may be made without prior notice to you and will be effective immediately. 32. Fees 32.1. The fees we charge for Amethpay Services are set out in the separate Fees Terms here for these Terms. We will provide you with notice of any changes to the Fees Terms in accordance with these Terms. It is your responsibility to stay informed and review these changes once we provide you with notice of a change to our fees. 32.2. The fees we charge for any other transaction fees are clearly displayed in the Amethpay Control Panel before you complete an action and accepted by you or a User. 32.3. We will deduct the fees you owe us from the Euro balance in your Amethpay Electronic Money Account. If there is not enough balance in Euro in your Amethpay Electronic Money Account, we will deduct the equivalent fees from a different currency balance using our Exchange Rates. We reserve the right to suspend your access to your Amethpay Services if we do not receive any amounts due to us from you promptly. 32.4. The fees for issuing replacement Amethpay Physical Cards will be charged at the time the Physical Card request is made. If the balance in your Amethpay Electronic Money Account is insufficient to cover the fees for issuing the replacement Physical Card, we may refuse to issue the replacement Physical Card. If your Amethpay Physical Card was lost, stolen, or misused, we will only charge for the costs associated with replacing your Physical Card and delivery to your applicable jurisdiction. 32.5. ATM Withdrawal fees will be charged at the time the ATM Withdrawal is performed. If the balance in your Amethpay Electronic Money Account is insufficient to cover the ATM Withdrawal fees, we may refuse to execute the ATM Withdrawal. Note that some ATM providers charge additional fees for using their ATMs and some merchants add a surcharge for accepting certain types of cards. You may also be subject to the merchant’s terms and conditions when using the Amethpay Card, and it is your responsibility to review and agree to them before proceeding with an Amethpay Card Transaction. 33. No Warranty 33.1. Amethpay Services are provided \"as is,\" \"as available,\" and without any representation or warranty, whether express, implied, or statutory. Amethpay, and its directors, agents, joint ventures, employees, and suppliers, make no representations or warranties of any kind in relation to the services or the content, materials, information, and functions made available by Amethpay Services used or accessed through Amethpay Services, or for any breach of security associated with the transmission of sensitive information through Amethpay Services. 33.2. Amethpay does not warrant that Amethpay Services will be uninterrupted or error-free. Amethpay will not be liable for any service interruption beyond its control, including but not limited to, system failures or other interruptions that may affect the receipt, processing, acceptance, completion, or settlement of Amethpay Transactions or Amethpay Services. 33.3. Amethpay has no control over the products or services paid for using Amethpay Services. 33.4. Amethpay is not responsible for the quality, performance, or any other consequences arising from the use of products or services provided by third parties. 34. Governing Law and Jurisdiction These Terms and Conditions are governed by the laws of Poland.  Any dispute arising out of or related to these Terms and Conditions will be resolved in the competent courts of Poland. 35. Contact For any questions or concerns related to these Terms and Conditions, please contact us:  Amethpay  Address: Krawiecka, No. 3/5, Wroclaw, Poland - ZIP Code 50-148,  Email: contact@amethpay.com / support@amethpay.com  Phone: +48 538 364 720',
                                                                        ).image,
                                                                      ),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3.0,
                                                                          color:
                                                                              Color(0x23000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            1.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(25.0),
                                                                        bottomRight:
                                                                            Radius.circular(25.0),
                                                                        topLeft:
                                                                            Radius.circular(25.0),
                                                                        topRight:
                                                                            Radius.circular(25.0),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 16.0, 5.0, 5.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'vyewq6wg' /* General Terms and Conditions o... */,
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            font: GoogleFonts.poppins(
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                            ),
                                                                                            color: Colors.white,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        10.0,
                                                                        20.0,
                                                                        5.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x4B111417),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            3.0,
                                                                        color: Color(
                                                                            0x23000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          1.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            16.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 16.0, 5.0, 10.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'navhjvl7' /* The Amethpay App is owned by A... */,
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                          ),
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Container(
                decoration: BoxDecoration(),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Image.network(
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/r6u9acnswmsv/Tela8.png',
                          width: double.infinity,
                          height: 340.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/iclo1yz89uz5/Tela28_transparente.png',
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.87),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              355.0, 0.0, 355.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x520E151B),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    color: Color(0xFFA74DC9),
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                        TermsandconditionsbusinessWidget
                                            .routeName);
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.35,
                                                      child:
                                                          TermsbusinessComputerWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'c4g0rxpw' /* Follow */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 85.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.lexend(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFFA74DC9),
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 200.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 800.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x320E151B),
                                            offset: Offset(
                                              0.0,
                                              -2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      355.0, 12.0, 355.0, 0.0),
                                              child: Column(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment(0.0, 0),
                                                    child: TabBar(
                                                      labelColor:
                                                          Color(0xFFA74DC9),
                                                      unselectedLabelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                              ),
                                                      unselectedLabelStyle:
                                                          TextStyle(),
                                                      indicatorColor:
                                                          Color(0xFFA74DC9),
                                                      tabs: [
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '9d37d8ra' /* Conditions */,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'lwjr795g' /* Privacy Policy */,
                                                          ),
                                                        ),
                                                      ],
                                                      controller: _model
                                                          .tabBarController2,
                                                      onTap: (i) async {
                                                        [
                                                          () async {},
                                                          () async {}
                                                        ][i]();
                                                      },
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: TabBarView(
                                                      controller: _model
                                                          .tabBarController2,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          5.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4B111417),
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .network(
                                                                          'General Terms and Conditions of Use of Amethpay These terms constitute a framework agreement that sets out the terms of:  (a) You and us entering into Amethpay transactions; and  (b) Using the Amethpay Control Panel and other Amethpay services.  Before you can carry out transactions and benefit from Amethpay services, it is necessary to:  Read these Terms and check the box confirming the accuracy of the information provided and your acceptance and agreement with these Terms; and  Provide us with the documentation, photographs, and information that we may reasonably request to comply with our regulatory obligations. 1. General Information 1.1. You must confirm and provide valid, accurate, and correct information to us. If any information provided changes, you must notify us and update such information immediately. You will be responsible for any invalid, inaccurate, or incorrect information you may have provided us. We will not be liable for any losses arising from your failure to keep the information updated. 1.2. Your information will be stored and protected according to the terms of the Privacy Policy and as set out in Section 29. 1.3. These Terms incorporate by reference the Website Terms, the Cookies Policy, the Privacy Policy, the Amethpay Cardholder Terms, the Mobile App Terms, and any supplements thereto. By accepting and agreeing to these Terms, you also agree to the Website Terms, the Cookies Policy, the Privacy Policy, the Amethpay Cardholder Terms, the Mobile App Terms, and any supplements, all available on the website. 1.4. By accepting and agreeing to these Terms, you also understand and agree that your information will be shared with regulatory bodies. 1.5. Amethpay reserves the right to provide some or all of the Products and Services described herein. If a Product or Service is not offered in your jurisdiction, then the parts of these Terms related to such Product or Service will not apply to you. 1.6. Terms that start with capital letters are defined terms listed at the end of these Terms in Annex 1. 2. Regulatory Information 2.1. These Terms are between you (the “User,” “you,” or “your”) and Amethyst Ue Spolka Zoo. (\"Amethpay\"). 2.2. Amethpay is a limited liability company, registered in the KRS No. 0000750733, NIP No. 8992851342, REGON No. 38142116600000, with its head office at Krawiecka, No. 3/5, Wroclaw, Poland, ZIP Code 50-148. 2.3. Amethpay is regulated as a Principal Payment Institution by the Komisja Nadzoru Finansowego (KNF) to conduct business providing Account Issuance Services, Domestic Money Transfer Services, Cross-border Money Transfer Services, Digital Payment Token Services, Merchant Acquisition Services, and Electronic Money Issuance Services. You can verify this information on the KNF website (https://www.knf.gov.pl). As a regulated entity, Amethpay is required to comply with all applicable laws, regulations, notices, and guidelines issued by the relevant government and regulatory authority. 2.4. Users are advised to read these Terms carefully. 3. Commencement, Term, and Funding of your Amethpay Account 3.1. These Terms will commence on the day Amethpay confirms to you, via the Mobile App, that your Amethpay Account has been approved, and will continue until terminated in accordance with Clause 32 (Changes to these Terms) and/or Clause 35 (Termination). 3.2. Your Electronic Money Account is an account issued by Amethpay in which the Electronic Money that Amethpay issued to you in exchange for receiving money from you or on your behalf is stored. The Electronic Money in your Amethpay Electronic Money Account can be used by you to enter into:  Control Panel Transactions; and  Amethpay Card Transactions. 3.3. You may be required to provide supplementary information to us to use all available functionalities. 3.4. When we hold Electronic Money for you, holding the funds corresponding to the Electronic Money is not the same as a bank holding money for you, as:  (a) we cannot and will not use the funds to invest or lend to others;  (b) your Electronic Money will not earn interest; and  (c) your Electronic Money is not covered by the Deposit Insurance Scheme. The funds corresponding to the Electronic Money will be held in one or more segregated bank accounts separately from our own funds. 3.5. We safeguard the funds in your Amethpay Electronic Money Account (or “Customer Money”) in fiduciary accounts held with our Safeguarding Institutions. The Customer Money of our users is pooled in these fiduciary accounts and held in trust by Amethpay for our users. Our creditors cannot exercise any right of offset against these fiduciary accounts for any debt we owe, and the fiduciary accounts are distinguishable and kept separately from any other account where we deposit our own money. All interest earned on the fiduciary account will accrue to Amethpay and is not payable to users. 3.6. You can store multiple currencies in your Amethpay Electronic Money Account. These currencies are subject to change from time to time. 4. Termination of Your Access 4.1. We may suspend your access to the Amethpay Control Panel and/or the Amethpay Card for reasonable security reasons and as permitted by applicable laws. If we suspend your access under these circumstances, we will notify you via the Mobile App and direct you to our customer service team through the chat function in the Amethpay Control Panel. 5. The Amethpay Control Panel 5.1. The Amethpay Control Panel is our portal where you can, among other things:  Recharge your Amethpay Account via Electronic Money Exchanges, Instant Transfers, and Amethpay Bank Transfers, including recurring transfers (once all charges displayed on the Amethpay Control Panel are accepted) to and from your Amethpay Account;  Access systems to contract a Zloty exchange for USD or Euro via a Currency Exchange Transaction performed by Amethpay and transfer Zloty for USD or Euro to your Amethpay Electronic Money Account;  Transfer funds from your Amethpay Account to another User Bank Account;  Verify and accept or decline Instant Transfers to and from your Amethpay Account;  Verify your identity with us;  View your Amethpay Transaction History; View the balance and currency of the Electronic Money you hold in your Amethpay Electronic Money Account and the funds you hold in your Amethpay Account;  Enable or disable your Amethpay Physical Card or Amethpay Virtual Card, change the PIN of your Amethpay Physical Card or Amethpay Virtual Card, and access other security features;  Enable and disable location tracking; and  Enter the details of your User Bank Account and your Stored Cards. 5.2. You can access the Amethpay Control Panel via the Mobile App. 6. Your Amethpay Card 6.1. If you register as a Standard User, once accepted as an Amethpay Account holder, we will allow you to issue your Amethpay Card, subject to any applicable fees as set out in the Fee Page and the Amethpay Cardholder Terms. 6.2. Your use of the Amethpay Card is subject to the Amethpay Cardholder Terms and the laws and regulations applicable to the Amethpay Card in Poland. 6.3. You can activate and deactivate a Physical and Virtual Amethpay Card using the Amethpay Mobile App. Failure to disable the Physical or Virtual Amethpay Card upon learning that it has been lost or stolen may mean that you lose your right to any compensation for an unauthorized Amethpay Transaction. 6.4. Funds in any currency other than Reais, loaded onto your Amethpay Card, will be held by Amethpay in your Amethpay Account (more information in Clause 8). 7. Identity Verification 7.1. You agree to cooperate with all requests made by us or by any of our third-party service providers on our behalf in connection with your Amethpay Account, to identify or authenticate your identity or validate your funding sources or Amethpay Transactions. This may include but is not limited to, asking you for more information that reasonably allows us to identify you, including requiring you to take steps to confirm ownership of your phone number or payment instruments or verify your information against third-party databases or other sources. All your data will be secure and protected under the terms set out in our Privacy Policy. 7.2. We reserve the right to terminate, suspend, or limit access to your Amethpay Account, Amethpay Electronic Money Account, and/or Amethpay Services if we cannot obtain or verify this information or you do not comply with our requests under Clause 7.1 of these Terms. 7.3. We may confidentially verify the information you provide to us or obtain information about you ourselves or through third parties in secure databases. Some of the checks we or a third party may conduct, such as a credit check, may leave a soft mark on your credit history. This will not affect your credit rating. By entering into these Terms, you confirm that you consent to us or a third party on our behalf carrying out such checks and understand that these checks are indispensable for us to provide our services to you. 7.4. You must ensure that the information on your Amethpay Account is always accurate and up to date. If at any time we believe your information is outdated or inaccurate, we may contact you and request more information or ask you to go through the verification process again. Your Amethpay transaction limit will be adjusted as we verify your identity. 8. Recharges to Your Amethpay Electronic Money Account 8.1. To recharge Electronic Money in your Amethpay Electronic Money Account, you will need to make a recharge via any method that we make available to you from time to time. 8.2. We may, at our reasonable discretion (e.g., without limitation, to limit fraud or credit risk), impose limits on the amount of money you can receive through Amethpay Services. To increase your receiving limit, you must provide us with any supplementary information we request. If you have a recharge limit on your Amethpay Electronic Money Account, you will be able to view it by logging into the Amethpay Control Panel and accessing the Profile section. 8.3. Where available in the Amethpay Control Panel, you can also fund your Amethpay Electronic Money Account by making a User Bank Transfer or a Third-Party Bank Transfer. 8.4. In relation to Clause 8.3 above, upon our receipt of the amount sent via User Bank Transfer (made within or outside the Amethpay Control Panel) or a Third-Party Bank Transfer, we will issue the corresponding amount of Electronic Money to your Amethpay Electronic Money Account. The bank account details (belonging to Amethpay) to send the money will be set out in the Amethpay Control Panel. Please take care (or ask the third party making the Third-Party Bank Transfer to take care) to enter the correct bank account details when making the User Bank Transfer or Third-Party Bank Transfer, to ensure the money reaches us. If we receive your money in a currency different from the currency you indicated when we provided the bank account details, we will not be liable for any losses you incur if our bank performs a currency conversion to change the money received to the currency of our bank account to which the money was sent. 9. Amethpay Transactions 9.1. The following are “Amethpay Control Panel Transactions”:  “Electronic Money Exchange” means using Electronic Money in your Amethpay Electronic Money Account, in one currency, to buy Electronic Money in another currency using our Exchange Rates;  “Instant Transfer” – this means sending Electronic Money to your Amethpay Electronic Money Account or from your Amethpay Electronic Money Account to another User’s Amethpay Electronic Money Account;  and “Amethpay Bank Transfer” – this means redeeming Electronic Money in your Amethpay Electronic Money Account, with or without an associated Currency Exchange, and transferring the equivalent amount of money to the Counterparty Bank Account. 9.2. The following are “Amethpay Card Transactions”:  “ATM Withdrawal” – this means using your Amethpay Physical Card and the Card PIN to obtain cash internationally from an ATM with or without a Currency Exchange occurring; and  “Amethpay Card Purchase” – this means using your Amethpay Card to buy goods and/or services from a merchant by entering your Amethpay Card details and/or your Card PIN. 9.3. Amethpay may refuse to carry out an Amethpay Transaction with you at any time and for any reason. 9.4. Amethpay provides virtual receipts for successful Amethpay Transactions (including Instant Transfer and Bank Transfer transactions) carried out by you. These transactions are also accessible in the Amethpay Control Panel and are available via email. In addition to virtual receipts, merchants must provide receipts when you carry out an Amethpay Card Purchase. Amethpay will not provide and is under no obligation to provide you with a physical receipt or other written confirmation in connection with any Amethpay Transaction. 10. Exchange 10.1. You can exchange Electronic Money in your Amethpay Electronic Money Account for Electronic Money in another currency using the exchange function in the Amethpay Control Panel. The currencies of Electronic Money you can buy and store in your Amethpay Electronic Money Account are limited to those set out in the Amethpay Control Panel and are subject to change from time to time without our needing to notify you. 10.2. Zloty can only be converted from your Amethpay Account to Euro or USD by a Currency Exchange Transaction performed by Amethpay, which transfers your USD to your Amethpay Electronic Money Account. USD can be converted into Zloty only from your Amethpay Electronic Money Account to your Amethpay Account. The only Currency Exchange Transaction you can contract is for Availability or return of Availability. Amethpay is responsible for performing the Currency Exchange Transactions you request through the Amethpay Control Panel. 10.3. Any exchange of currencies to and from Poland will be subject to applicable Polish tax and currency exchange laws and regulations. 10.4. You will be informed, in the Amethpay Control Panel, before submitting your request to perform the Currency Exchange Transaction or Electronic Money Exchange, of:  The amount of Electronic Money you will use to buy the value of Electronic Money in the desired currency;  The amount and currency of the Electronic Money you wish to buy;  The Exchange Rate for the Electronic Money Exchange; and  Applicable IOF taxes and their respective amounts. 10.5. To submit your request for a Currency Exchange Transaction or Electronic Money Exchange, you will need to confirm the details that have been entered by tapping the exchange button in the relevant part of the Amethpay Control Panel. 10.6. By entering into these Terms, you accept sole responsibility for performing the Currency Exchange Transaction or Electronic Money Exchange. Amethpay will not be liable for any losses you incur as a result of using this function. 10.7. The request to perform a Currency Exchange Transaction or Electronic Money Exchange will be accepted by us when we confirm to you that the Currency Exchange Transaction or Electronic Money Exchange has been performed in the Amethpay Control Panel. 10.8. The amount of Electronic Money you can exchange from your Amethpay Electronic Money Account at the Amethpay exchange rate is limited. Please refer to the Fees and Pricing Terms for more information on the Amethpay exchange rate. It is your responsibility to stay informed about any changes to the limits and fees applied to any exchanges at the Amethpay exchange rate. 10.9. You can transfer funds to your Amethpay Account by transfer, and it will be processed during Polish business hours. 11. Instant Transfer 11.1. From your Amethpay Electronic Money Account, you can send money to and receive money from other Amethpay accounts. We call these types of payments Instant Transfers. You can make an Instant Transfer to another Amethpay User’s account by selecting them as a recipient from the contacts list in the Amethpay app and following the instructions. The Amethpay User recipient will receive the transfer immediately. 11.2. Where applicable, you will need to enter the Counterparty details requested in the Amethpay Control Panel (the \'unique identifier\') to request entry into an Instant Transfer. It is your responsibility to ensure that the Counterparty’s unique identifier is entered correctly. Any error may result in the Instant Transfer being unsuccessful or delayed. We will not be liable for any losses you incur by entering an incorrect unique identifier. 11.3. If the Counterparty is already an Amethpay User, you will be informed in the Amethpay Control Panel, before confirming your request to enter the Instant Transfer, of:  The Counterparty’s name;  The amount and currency of the Electronic Money you wish to send to the Counterparty; and  The fees for the Instant Transfer (if any). 11.4. To submit the request for entry into the Instant Transfer, you will need to confirm the details that have been entered by tapping the button entitled “Send” in the relevant part of the Amethpay Control Panel. Once you have provided confirmation (provided the Counterparty is an Amethpay User), at this point we will be deemed to have received your request for entry into the Instant Transfer. 11.5. If the Counterparty is not an Amethpay User, then the request for entry into the Instant Transfer will remain pending for 24 hours (excluding weekends and holidays in Poland). The request for entry into the Instant Transfer will not be deemed received until the Counterparty is approved as an Amethpay User, within the 24 hours (excluding weekends and holidays in Poland) during which the Instant Transfer is pending. The Counterparty will receive an SMS with instructions on how to open an Amethpay Account. You authorize Amethpay to send an SMS to the Counterparty on your behalf. If the Counterparty does not sign up for Amethpay within 24 hours of the SMS being sent, the pending Instant Transfer will be canceled. 11.6. If the Counterparty is not an Amethpay User, then:  The request for entry into the Instant Transfer will remain pending and will not be deemed received by us until the non-Amethpay User is accepted as an Amethpay User;  The Instant Transfer must be completed no later than the end of the next Business Day following the day on which the Counterparty becomes an Amethpay User, provided the Counterparty becomes an Amethpay User before the pending Instant Transfer expires. 11.7. Once your Electronic Money has been sent, you will be able to view the completed Instant Transfer in the Amethpay Transaction History section of the Amethpay Control Panel. 12. Amethpay Bank Transfer and Currency Exchange 12.1. You can make a request to enter into an Amethpay Bank Transfer from your Amethpay Electronic Money Account by logging into the Amethpay Control Panel and following the on-screen instructions. You will need to enter the Counterparty Bank Account details. It is your responsibility to ensure that the Counterparty and Counterparty Bank Account details (the \'unique identifiers\') are entered correctly. Any error in the information may result in the Amethpay Bank Transfer being unsuccessful or delayed. We will not be liable for any losses you incur by entering incorrect Counterparty Bank Account details. 12.2. You will be informed in the Amethpay Control Panel, before confirming your request to enter the Amethpay Bank Transfer, of:  The Counterparty Bank Account details;  The amount and currency of the money you wish to send to the Counterparty; and  The fees for the Amethpay Bank Transfer (if any). 12.3. To submit the request for entry into the Amethpay Bank Transfer, you will need to confirm the details that have been entered by tapping the \'confirm\' button in the relevant part of the Amethpay Control Panel. 12.4. The request for entry into the Amethpay Bank Transfer or an Amethpay Bank Transfer via recurring payments will be deemed received at the time you provide your confirmation, except where the request for entry into an Amethpay Bank Transfer is deemed received on a day other than a Business Day or is received after 4:00 p.m. Polish time on a Business Day, in which case we are entitled to treat the request for entry into the Amethpay Bank Transfer as having been received on the next Business Day. 12.5. When the Payment is denominated in Zloty, or a currency other than Zloty, we will use all reasonable efforts to ensure that we execute the Amethpay Bank Transfer as soon as possible, and in any case, within 3 Business Days for domestic bank transfers within Poland and 7 Business Days for cross-border bank transfers. 12.6. For transfers to the Amethpay Account, refer to Clause 10.9. 12.7. If the Counterparty Bank Account currency (according to the information provided by you in the Amethpay Control Panel) is different from the currency of the Electronic Money you are using to enter the Amethpay Bank Transfer, then as part of the Amethpay Bank Transfer, we will perform a Currency Exchange to the appropriate currency before sending the money to the Counterparty Bank Account. In this case, you will be informed of the Exchange Rate for the Currency Exchange before confirming the Amethpay Bank Transfer. 12.8. You can revoke your request for entry into the Amethpay Bank Transfer at any time before the end of the Business Day prior to the date on which the Amethpay Bank Transfer is scheduled to take place. 12.9. Where applicable, you can revoke your request for entry into a recurring payment via Amethpay Bank Transfer at any time before the end of the Business Day prior to the date on which the recurring Amethpay Bank Transfer payment is scheduled to take place. 12.10. Once the Amethpay Bank Transfer is complete, you will be able to view the completed Amethpay Bank Transfer in the Amethpay Transaction History section of the Amethpay Control Panel. 12.11. If for any reason the funds are not deposited into the Counterparty Bank Account and are returned to Amethpay, they will be converted into the currency of the Electronic Money from which they were originally withdrawn. Due to the price difference for buying and selling currencies and/or fluctuations in exchange rates, the amount of Electronic Money you receive back in your Amethpay Electronic Money Account may be higher or lower than the amount originally redeemed to perform the Amethpay Bank Transfer. Amethpay is not responsible for any losses you incur in this regard. 12.12. Some Counterparties accept payment by setting up recurring payments to be deducted from your Amethpay Electronic Money Account regularly. The amount of the recurring payment and the intervals at which payments will be deducted are determined by the agreement between you and the relevant Counterparties, and their terms and conditions will apply. If you wish to amend or cancel your recurring payment, you can only do so by contacting the Counterparties directly. 13. ATM Withdrawal and Currency Exchange 13.1. You can use your Amethpay Physical Card to withdraw cash from ATMs, including internationally, from ATMs in countries outside of Poland. In this case, we will redeem Electronic Money in your Amethpay Electronic Money Account and you will receive the equivalent amount in cash. You will need to follow the instructions on the ATM machine to perform the ATM Withdrawal. This may involve entering your Card PIN. 13.2. We do not charge for ATM Withdrawals up to the limit set out on the Fees Page. If you withdraw more than the limit, then each ATM Withdrawal will be subject to the fee set out on the Fees Page. 13.3. If you choose to withdraw cash in a currency different from the currency for which you have sufficient Electronic Money in your Amethpay Electronic Money Account, our Exchange Rate will apply. 13.4. If you choose to withdraw cash using the currency conversion offered by the ATM owner, Amethpay has no responsibility for that currency conversion. Note that the ATM provider may, in addition, charge its fee for ATM Withdrawals, over which we have no control or responsibility. 14. Amethpay Card Purchase and Currency Exchange 14.1. You can use your Amethpay Card to buy goods and/or services from a merchant, whether online or at a point-of-sale terminal anywhere that accepts the Amethpay Card. In this case, we will redeem Electronic Money in your Amethpay Electronic Money Account, and the merchant will receive, less any Amethpay fees (acting as the Card Issuer), the equivalent amount in cash. You will need to follow the instructions on the relevant website or point-of-sale machine to perform the Amethpay Card Purchase. This may involve entering your Amethpay Card details (card number, expiry date, and CVC number) or your Card PIN. 14.2. If you choose to be charged for your purchase in a currency different from the currency for which you have sufficient Electronic Money in your Amethpay Electronic Money Account, our Exchange Rate will apply. 14.3. Where a currency conversion is offered to you by the merchant and you choose to authorize the payment transaction based on the merchant’s exchange rate and charges, Amethpay has no responsibility for that currency conversion. You can find more information about this here. 14.4. Please refer to the Amethpay Cardholder Terms for more details. 15. Receipt of Electronic Money 15.1. If you receive funds into the Amethpay Account or Electronic Money into your Amethpay Electronic Money Account, we will send a notification to the Amethpay Control Panel and display the payment in your Amethpay Transaction History. 15.2. You can request a payment from another Amethpay User to your Amethpay Electronic Money Account using the \"Request Money\" function or the \"Split Bill\" function or other functions made available to you from time to time in the Amethpay Control Panel. You should only use this function for amounts owed to you and due for full payment. This service cannot be used as a debt collection or enforcement tool. 16. Exchange Rates 16.1. The \"Exchange Rate\" means the:  \"Standard Exchange Rate\";  \"Non-Standard Exchange Rate\";  16.2 Depending on the amount of Currency Exchange Transactions, Electronic Money Exchanges, and Currency Exchanges conducted by you in the given month, more details are set out on the Fees Page. 16.3. Generally, for major currencies during forex market hours, the Standard Exchange Rate will be the Amethpay exchange rate. However, in certain circumstances, it is not possible for the Standard Exchange Rate to be the Amethpay exchange rate, including when the forex market is closed on weekends or holidays, or when your Exchange Rate involves illiquid currencies. It may also not be possible for the Standard Exchange Rate to be the Amethpay exchange rate due to other external factors, such as volatile market conditions, Amethpay system failure, or any other external factor. In such cases, the Standard Exchange Rate will differ from the Amethpay exchange rate. Please consider the conditions in Section 1.5 and consult the Fees Page. 16.4. We will use the Exchange Rates set out on the Fees Page, where possible; however, you will be informed (where possible) of the exact Exchange Rate for each Amethpay Transaction before your entry into it. It is your responsibility to ensure you are satisfied with the Exchange Rate we offer before entering each Amethpay Transaction. Additionally, our live exchange rates are available in the Amethpay Control Panel. 16.5. The exchange between Zloty, Euro, and USD is subject to the following limits below:  Euros 9,999.99 (nine thousand nine hundred ninety-nine dollars and ninety-nine cents) per transaction; and  One of the following limits in 12 consecutive months:  Euros 10,000.00 (ten thousand euros) if proof of address is not sent.  Euros 100,000.00 (one hundred thousand euros) upon presentation of proof of address and occasional request for proof of income. 17. Your Balance and Negative Balances 17.1. You acknowledge that balances and funds available reported in the Amethpay Control Panel are only approximate real-time balances, and not settled balances in your Amethpay Electronic Money Account. A real-time balance may not take into account pending debits and credits. Amethpay will provide information on pending debits and credits as soon as it has this information. 17.2. If for any reason (including, but not limited to, technical errors on our part or our third-party providers’ part, due to transactions occurring outside Polish business hours) you have a negative balance in your Amethpay Electronic Money Account, you agree to immediately top up the necessary amount to correct the negative balance, these amounts being due without prior notice. If you do not do so, we may:  Exercise our right of offset in accordance with Clause 22 (Our Right of Offset) of these Terms;  Initiate a chargeback procedure for any specific transaction that led your Amethpay Electronic Money Account to have a negative balance;  Take debt collection measures, including but not limited to, hiring a debt collection agency or lawyers, or seeking a claim in court. We reserve the right to charge you for any expenses we reasonably incur in connection with any debt collection or enforcement efforts;  If Amethpay requests that you complete a top-up to correct a negative balance and you do not do so within 7 Business Days, where applicable, you authorize us to initiate a payment transaction for the amount of the negative balance (or the equivalent in another currency) from one of your Stored Cards or User Bank Accounts (as applicable). 18. Security 18.1. You have an important role to play in ensuring your Amethpay Account is protected from unauthorized access and use by practicing good security hygiene. 18.2. You must ensure that you take all reasonable steps to:  Ensure your mobile phone and mobile PIN are kept secure;  Ensure access to the Amethpay Control Panel is kept secure; and  Ensure your Amethpay Card PIN and other unique numbers (including CVC, expiry date, and card number) are kept secure. 18.3. The requirement in Clause 18.2 includes but is not limited to, you:  Closing the Mobile App or Amethpay application page whenever you are not using it or have finished using it;  Keeping the mobile phone you use to access the Amethpay Control Panel secure and protected, locked with a strong password or other security mechanism;  Not writing down or telling anyone your mobile PIN;  Changing your mobile PIN regularly; If you receive SMS, emails, questionnaires, surveys, or other links requiring you to provide your mobile PIN, not providing your information and contacting our customer service team via the chat function in the Amethpay Control Panel;  Ensuring the mobile phone and email accounts you use to communicate with us are secure and only accessed by you, as your mobile phone and email address can be used to reset your mobile PIN or send information related to the security of the Amethpay Control Panel;  If at any time you believe your mobile PIN has been lost, stolen, or someone else knows your mobile PIN, or someone has access to your email account or mobile phone you use to communicate with us, immediately informing the customer service team via the chat function in the Amethpay Control Panel; Updating the Mobile App to the latest version available for your device, as it may contain security updates; Keeping your Amethpay Card secure;  Not writing down or telling anyone your Amethpay Card PIN or Amethpay Card details; and  Disabling your Amethpay Card via the Amethpay Control Panel or reporting to us at any time if you believe the security of the Amethpay Card is at risk, e.g., if it is lost or stolen. 18.4. All Amethpay Transactions are processed by automated methods, and anyone who obtains access credentials to the Amethpay Control Panel or access to an Amethpay Card can use it to carry out Amethpay Transactions without your permission. While Amethpay has systems in place to detect fraudulent activity, you are responsible for monitoring your Amethpay Account activity. If you notice any misuse, theft, or unauthorized use of your mobile phone, Amethpay Card, mobile PIN, or Card PIN, or any other suspicious activity, you should contact the customer service team and, if possible, enable the appropriate security features in the Mobile App. Where applicable, you may be asked to provide additional information strictly necessary for our review and investigation purposes. If you suspect identity theft or Electronic Money theft, we suggest contacting local authorities. 19. Restrictions on the Use of Amethpay Services 19.1. The following activities are not permitted:  Using Amethpay Services for any illegal purposes, including but not limited to, fraud and money laundering, illegal sexual orientation materials or services, counterfeit products, illegal gambling activities, fraud, money laundering, financing terrorist organizations, illegal purchase or sale of tobacco, firearms, prescription drugs, other controlled substances, or other products prohibited by law. Amethpay will report any suspicious activity and cooperate with any relevant law enforcement or regulatory agency;  Using Amethpay Services to abuse, exploit, or circumvent usage restrictions imposed by a merchant on the services they provide, or to obtain goods or services without paying the full or partial amount due;  Violating these Terms, the Amethpay Cardholder Terms (as applicable), or any other agreement or policy you have agreed to with Amethpay or Amethpay (acting as the Card Issuer);  Creating more than one Amethpay Account without our prior written consent;  Using Amethpay Services to violate any law, statute, ordinance, or regulation;  Using Amethpay Services for any illegal purposes, including purchasing or selling, or facilitating the purchase or sale of, illegal goods or services;  Using Amethpay Services to conduct activities related to adult entertainment/pornography, auction houses, charities, chemicals and related products, dating and escort services, binary options, legal services, political or religious organizations, video game arcades or establishments, and businesses claiming to trade primary bank guarantees, debentures, letters of credit, or medium-term notes;  Infringing on the copyrights, patents, trademarks, trade secrets, or other intellectual property rights of Amethpay or third parties, or publicity or privacy rights;  Acting in a defamatory, libelous, threatening, or harassing manner when using Amethpay Services;  Providing us with false, inaccurate, or misleading information;  Using Amethpay Services to engage in debt collection activities;  Instructing us to send or receive funds that we reasonably believe are potentially fraudulent on your behalf;  Attempting to receive or knowingly and intentionally receiving funds from both Amethpay and a merchant for the same Amethpay Transaction;  Controlling an Amethpay Account that is linked to another Amethpay Account that has engaged in any of these Restricted Activities;  Conducting your business or using Amethpay Services in a manner that could result or could result in claims, disputes, chargebacks, fees, fines, penalties, or other liabilities for Amethpay, other Users, third parties, or yourself;  Using your Amethpay Account or Amethpay Services in a manner that Amethpay (acting as the Card Issuer), Visa, MasterCard, American Express, Discover, or any other electronic funds transfer network reasonably believes to be an abuse of the system or a violation of the card association or network rules;  Allowing any of the currencies in your Amethpay Electronic Money Account to have a negative balance;  Providing yourself with a cash advance from your credit card (or helping others do so);  Taking any action that imposes an unreasonable or disproportionately large load on our infrastructure;  facilitating any viruses, Trojan horses, worms, or other computer programming routines that may damage, detrimentally interfere with, surreptitiously intercept, or expropriate any system, data, or information;  using an anonymous proxy;  using any robot, spider, other automatic device, or manual process to monitor or copy our Site without our prior written permission;  or interfering or attempting to interfere with Amethpay Services;  Taking any action that could cause us to lose any of the services of our Internet service providers, payment processors, or other suppliers;  Using Amethpay Services to test credit card behaviors; Circumventing any Amethpay policy or determination regarding your Amethpay Electronic Money Account, including but not limited to, attempting to create a new or additional Amethpay Account when an Amethpay Electronic Money Account has a negative balance or has been restricted, suspended, or otherwise limited;  Creating new or additional Amethpay Electronic Money Accounts using information that is not yours (e.g., name, address, email address, etc.);  Or using someone else’s Amethpay Electronic Money Account;  Harassing our employees, agents, or other Users;  Refusing to cooperate in an investigation or providing confirmation of your identity or any information you provided to us;  Using Amethpay Services in a manner that we believe may be a violation of any applicable electronic payment network rule, card association rule, or applicable law;  Using Amethpay Services to trade FX for speculative purposes or for FX arbitrage; Refusing or failing to provide more information about yourself or your business activities that we may reasonably request to comply with regulatory obligations or meet compliance specifications, in accordance with applicable regulations and our policies;  Conducting your business or using Amethpay Services in a manner that leads us to receive a disproportionate number of claims or chargebacks; Revealing your mobile PIN or Card PIN to anyone or using someone else’s Amethpay Mobile App or Amethpay Card. 19.2. You must ensure that you only enter into Amethpay Transactions related to the sale or supply of goods and services in compliance with all applicable laws and regulations. The fact that a person or entity accepts payments via Amethpay Transaction is not an indication of the legality of providing or supplying the goods and services. 19.3. We reserve the right to refuse to carry out an Amethpay Transaction directly or indirectly associated with any Restricted Country. 19.4. If Amethpay, in its sole discretion, believes that you may have violated the provision of this Clause, we may take actions to protect ourselves, other Users, and third parties. Actions we may take include, but are not limited to:  Terminating, suspending, or limiting your access to your Amethpay Electronic Money Account or any or all of Amethpay Services;  Contacting other Users who have transacted with you; contacting your bank or credit card issuer; and/or notifying other Users, law enforcement, or impacted third parties about your actions;  Updating inaccurate information you provided us;  Taking legal action against you;  Terminating these Terms or your access to the Site;  Reversing in whole or in part an Amethpay Transaction; and/or  Blocking your access to your Amethpay Electronic Money Account and/or Amethpay Control Panel temporarily or permanently. 19.5. Where possible or required by applicable laws and regulations, Amethpay will provide you with the relevant information about the actions imposed, but we may not be able to do so in accordance with appropriate law, including avoiding disclosing information protected by third parties or interfering with the course of an investigation. 20. Amethpay Transaction Limits 20.1. We reserve the right to impose, at our sole discretion, Amethpay Transaction Limits based on criteria determined by us and which do not need to be disclosed. 20.2. You can view some of these Amethpay Transaction Limits by logging into the Amethpay Control Panel. Amethpay may, from time to time, provide you with procedures or methods to remove or increase these limits. We reserve the right to remove Amethpay Transaction Limits from the Amethpay Control Panel. 21. Suspension of the Use of Amethpay Services 21.1. We reserve the right to change, suspend, or discontinue any aspect of Amethpay Services at any time, including hours of operation or availability of Amethpay Services or any feature of Amethpay Services, without notice and without liability. 22. Our Right of Offset 22.1. In the event of any event that entitles us to be compensated by you (including, but not limited to, negative balances due to transactions occurring outside Business Hours, or any technical errors on our part or our third-party providers\' part), we will have the right to recover any amount owed to us by withholding part or all of the amount you have in your Amethpay Electronic Money Account, deposited with us under any Amethpay Transaction, or otherwise. You will have no similar right of offset. For the avoidance of doubt, this includes if one of the currency balances in your Amethpay Electronic Money Account shows that you owe us an amount of funds for any reason or has a negative balance, Amethpay may offset the amount you owe us using funds you hold in that currency or in a different currency balance or deducting amounts you owe us from money you receive into your Amethpay Electronic Money Account, or money you attempt to withdraw or send from your Amethpay Electronic Money Account, or in a different Amethpay Electronic Money Account that you control and deducting funds from any withdrawal you attempt to make. 22.2. In the event of any event that entitles us to be compensated by you, if for any reason we are unable to exercise our right of offset in accordance with Clause 22.1, we may initiate a payment transaction for the amount we are to be compensated by you from one of your User Bank Accounts. 22.3. If the amount owed to us is in a different currency from the money or Electronic Money you hold with us in your Amethpay Account, we will convert the amount you hold with us in your Amethpay Account to the currency of the amount you owe us by applying our Exchange Rates. We do not need to notify you about this conversion occurring. 23. Our Liability with Respect to Instant Transfers, Amethpay Bank Transfers, ATM Withdrawals, and Amethpay Card Purchases 23.1. You warrant that you are an individual acting solely on your own behalf and are acting for a purpose other than a trade, business, or profession. 23.2. If you believe that an Instant Transfer, Amethpay Bank Transfer, ATM Withdrawal, and/or an Amethpay Card Purchase was executed incorrectly or was not authorized by you, you must inform us as soon as possible via the chat function in the Amethpay Control Panel. 23.3. Where it is established that an Instant Transfer, Amethpay Bank Transfer, ATM Withdrawal, and/or an Amethpay Card Purchase was not authorized by you, or was initiated or executed incorrectly by us (provided we can prove that such incorrect transaction occurred) and you notified us, an Amethpay Bank Transfer, an ATM Withdrawal, or an Amethpay Card Purchase (in this case, within 90 days of the purchase acknowledgment), unless Clause 23.3 applies, we will refund the full amount to your Amethpay Account. 23.4. You will be liable for all losses incurred in relation to an Instant Transfer, an Amethpay Bank Transfer, ATM Withdrawal, and Amethpay Card Purchase performed by us that was not authorized by you if you acted fraudulently or intentionally or with gross negligence failed to comply with the obligations set out in Clause 19 (Security). 24. General Liability 24.1. You can contact us via the chat function in the Amethpay Control Panel. 24.2. We will not be liable for non-performance or defective performance in relation to an Instant Transfer or Amethpay Bank Transfer that we made in accordance with a unique identifier provided by you that proves incorrect. However, we will make reasonable efforts to recover the funds involved in such a transaction and may charge you for doing so, including passing on to you charges made by intermediary banks and/or the beneficiary\'s bank for their assistance in the tracing process. 24.3. We are not liable to you for the correct execution of an Instant Transfer, an Amethpay Bank Transfer, an ATM Withdrawal, or an Amethpay Card Purchase if we can prove to you (and where relevant, to the beneficiary\'s payment service provider) that the beneficiary\'s payment service provider received the payment within the appropriate time. However, at your request, we will make efforts to trace any non-executed or defectively executed payment transactions or any Amethpay Bank Transfers that were correctly executed to an account deemed fraudulent and notify you of any outcome involving our investigation. 24.4. Note that any restriction on your liability in relation to an unauthorized or incorrectly executed payment transaction does not apply to losses arising and/or related to Electronic Money Exchanges or Currency Exchanges. 24.5. We will not be liable for any losses you may incur as a result of losses or costs caused by abnormal and unforeseeable circumstances beyond our reasonable control, which would have been unavoidable despite all efforts to the contrary, which may, for example, include delays or failures caused by issues with another system or network, mechanical failure, or data processing failures. 24.6. We will not be liable for any losses or damages you may incur as a result of loss of profits or any special, incidental, or consequential damages arising out of these Terms or otherwise in connection with Amethpay Services, however arising. 24.7. You are responsible for all liabilities, financial or otherwise, incurred by Amethpay (acting as the Card Issuer), Amethpay, an Amethpay User, or a third party caused by or arising out of your breach of these Terms, your use of Amethpay Services, and any use of your Amethpay Account. You agree to reimburse Amethpay (acting as the Card Issuer), Amethpay, an Amethpay User, or a third party for any and all such liabilities, to the extent not prohibited by applicable law. 24.8. You remain liable under these Terms concerning all charges and other amounts incurred through the use of your Amethpay Account at any time, regardless of termination, suspension, or closure. 24.9. You are solely responsible for understanding and complying with all laws, rules, and regulations of your specific jurisdiction that may be applicable to you in connection with your use of Amethpay Services, including but not limited to those related to export or import activity, taxes, or foreign currency transactions. You are responsible for independently complying with all tax obligations. Amethpay will not be responsible for executing tax obligations or calculating and transferring taxes applied to you. 24.10. You agree to defend, reimburse, or compensate us (known in legal terms as “indemnify”) and hold Amethpay, our third-party providers, our employees, or agents who are authorized to act on our behalf harmless from any claim or demand (including attorney fees) made or incurred by any third party due to or arising out of your breach of these Terms, breach of any law, and/or use of Amethpay Services. 24.11. Nothing in these Terms will operate to exclude liability for death or personal injury or for fraud or fraudulent misrepresentation or for any liability that cannot be excluded or amended under Polish law. 24.12. In no event will Amethpay be liable for loss of profits or any special, incidental, or consequential damages arising out of these Terms or otherwise in connection with Amethpay Services, however arising. 24.13. We are not liable for any losses you incur resulting from your use of the Amethpay Card, which will be solely the responsibility of Amethpay (acting as the Card Issuer) and subject to the Amethpay Cardholder Terms (as applicable). 24.14. To the extent permitted by applicable law, Amethpay is not liable, and you agree not to hold it responsible, for any damages or losses (including but not limited to, loss of money, goodwill or reputation, profits, or other intangible losses, or any special, indirect, or consequential damages) resulting directly or indirectly from:  Your inability to use Amethpay Services for any reason;  Delays or disruptions in Amethpay Services not attributable to Amethpay;  Viruses or other malicious software obtained by accessing the Site or any associated site or service;  Technical problems, bugs, errors, or inaccuracies of any kind in Amethpay Services;  The content, actions, or omissions of third parties;  A suspension or other action taken concerning your Amethpay Account;  Your need to modify practices, content, or behavior, or your loss of business or inability to do so, as a result of changes to these Terms or Amethpay policies; and/or  Illegal actions and operations by third parties carried out using forged and/or illegal documents or data obtained illegally. 25. Withdrawal of Funds 25.1. You can withdraw funds from your Amethpay Electronic Money Account by performing an Amethpay Bank Transfer and selecting a User Bank Account as the Counterparty Bank Account or performing an ATM Withdrawal or using any other method available in the Amethpay Control Panel or as notified to you from time to time. 25.2. Amethpay is not responsible for payment of the withdrawal once the funds are received by your payment service provider, as Amethpay is the payer and not the payment service provider for withdrawals. 25.3. You can withdraw funds from the Amethpay Account by transfer during Polish business hours, provided you make your transfer request with Amethpay by 5:00 p.m., Polish time. Any transfer from your Amethpay Account can only be made to a User Bank Account (i.e., an account held by you, i.e., an account under your registration). 26. Termination of Your Account 26.1. Your Amethpay Account will be terminated at the end of the term of these Terms in accordance with Clause 3.1 or upon termination of these Terms in accordance with Clause 32 (Changes to these Terms) and Clause 35 (Termination). You accept that, upon the termination of your Amethpay Account, Amethpay will store personal data about you and your Amethpay Transactions for the period required by applicable laws in Poland. 26.2. If your Amethpay Electronic Money Account has a balance at the time of termination, we may require you to withdraw your funds within a reasonable period, during which your Amethpay Electronic Money Account will be accessible only for the purpose of withdrawing the remaining balance. Upon the expiration of this period, you will not be able to access your Amethpay Electronic Money Account, but you can withdraw any remaining funds for six years from the date of termination of your Amethpay Account by contacting customer support and requesting that the funds be sent to you, returning the funds via card refund or bank transfer. When your Amethpay Account is terminated, any pending instructions will be canceled. 26.3. You cannot terminate your Amethpay Account to avoid an investigation. If you attempt to terminate your Amethpay Account while Amethpay is conducting an investigation, it may freeze the account to protect all parties involved in Amethpay Services, its affiliates, or a third party against any liability. You will remain responsible for any obligations related to your Amethpay Account even after its termination. 27. Notice and Communications 27.1. You agree and consent to receiving all Communications that we provide in connection with Amethpay Services electronically. We will provide Communications to you by making them available in the Amethpay Control Panel or by sending them by email to the primary email address listed in your Amethpay Account Profile. 27.2. It is your responsibility to enable and monitor the transaction notifications sent to you via the Amethpay Control Panel and registered email account (where applicable). It is your responsibility to ensure you log in regularly to the Amethpay Control Panel and regularly review the Amethpay Control Panel, the Site, and your primary email address and open and review the communications we deliver to you by these means. You are required to review your Amethpay notices and Transaction History and promptly report any questions, apparent errors, or unauthorized Amethpay Transactions. Failure to contact us in a timely manner may result in loss of funds or important rights. 27.3. We may contact you from time to time to notify you of changes or information about your Amethpay Account. It is your responsibility to ensure that you regularly check the Amethpay Control Panel and that your contact information stored in your Amethpay Control Panel profile is up to date. You can contact us under these Terms via the chat function in the Amethpay Control Panel. 28. Data 28.1. To provide Amethpay Services under these Terms, we need to collect information about you. Under data protection law, we are known as the \"data controller\" of your personal information. For more information on how we use your personal information, please see our Privacy Policy. 28.2. By entering into these Terms, you are giving us permission to collect, process, and store your personal information for the purpose of providing our Amethpay Services to you. This does not affect any rights and obligations you or we have under data protection law. 28.3. You can withdraw your permission by terminating your Amethpay Electronic Money Account, which will terminate the agreement between you and us. If you do so, we will stop using your information for the purpose of providing Amethpay Services, but we may need to keep your information for other legal reasons. 29. Intellectual Property 29.1. The Amethpay Control Panel and the Site and all intellectual property rights contained therein, including but not limited to any content, are owned by or licensed to us. Intellectual property rights mean rights such as copyrights, trademarks, domain names, design rights, database rights, patents, and all other intellectual property rights of any kind, whether registered or not (anywhere in the world). Amethpay’s intellectual property includes \"Amethpay.com\", \"Amethpay,\" and all logos related to Amethpay Services. Additionally, all page headers, custom graphics, button icons, and scripts are service marks, trademarks, and/or trade dress of Amethpay. You may not copy, imitate, or use them without our prior written consent. 29.2. We reserve all our rights in any intellectual property in connection with these Terms. This means, for example, that we remain the owners of them and are free to use them as we see fit. 29.3. Nothing in these Terms grants you any legal rights in the Amethpay Control Panel and/or the Site, except as necessary to enable you to access the Amethpay Control Panel. You agree not to adjust or attempt to circumvent or delete any notices contained in the Amethpay Control Panel (including any intellectual property notices) and, in particular, in any digital rights or other security embedded or contained in the Amethpay Control Panel. 30. Customer Support and Complaints 30.1. We take all complaints and inquiries seriously. Any questions about us or feedback/inquiries regarding the services we provide should be directed to the chat function in the Amethpay Control Panel. You can also email support@amethpay.com. 30.2. You have the right to complain if your questions/inquiries are not resolved in the chat function in the Amethpay Control Panel. For this, you can email ouvidoria@amethpay.com or use the Web Form. Our complaints procedure (available on our Site) sets out the process for making and resolving any complaints. You can request a copy of our complaints procedure at any time by contacting customer support via the chat function in the Amethpay Control Panel. A final response to your complaint, or a letter explaining why the final response has not been completed, will be sent to you within 10 Business Days after your complaint has been made. If this is not possible due to unforeseen circumstances or lack of information, we will contact you. 31. Changes to These Terms 31.1. These Terms may be unilaterally changed by us by providing you with one month’s notice. These changes will be deemed accepted by you unless you notify us otherwise before the proposed effective date of the changes. If you notify us otherwise, your notification will be deemed a notice that you wish to terminate your Amethpay Account and terminate these Terms on the date the changes take effect. 31.2. Where a change to the Terms is required by law or relates to the addition of a new service, additional functionality to the existing service, a reduction in the cost of the Services, or any other change that does not reduce your rights or increase your responsibilities, the change may be made without prior notice to you and will be effective immediately. 32. Fees 32.1. The fees we charge for Amethpay Services are set out in the separate Fees Terms here for these Terms. We will provide you with notice of any changes to the Fees Terms in accordance with these Terms. It is your responsibility to stay informed and review these changes once we provide you with notice of a change to our fees. 32.2. The fees we charge for any other transaction fees are clearly displayed in the Amethpay Control Panel before you complete an action and accepted by you or a User. 32.3. We will deduct the fees you owe us from the Euro balance in your Amethpay Electronic Money Account. If there is not enough balance in Euro in your Amethpay Electronic Money Account, we will deduct the equivalent fees from a different currency balance using our Exchange Rates. We reserve the right to suspend your access to your Amethpay Services if we do not receive any amounts due to us from you promptly. 32.4. The fees for issuing replacement Amethpay Physical Cards will be charged at the time the Physical Card request is made. If the balance in your Amethpay Electronic Money Account is insufficient to cover the fees for issuing the replacement Physical Card, we may refuse to issue the replacement Physical Card. If your Amethpay Physical Card was lost, stolen, or misused, we will only charge for the costs associated with replacing your Physical Card and delivery to your applicable jurisdiction. 32.5. ATM Withdrawal fees will be charged at the time the ATM Withdrawal is performed. If the balance in your Amethpay Electronic Money Account is insufficient to cover the ATM Withdrawal fees, we may refuse to execute the ATM Withdrawal. Note that some ATM providers charge additional fees for using their ATMs and some merchants add a surcharge for accepting certain types of cards. You may also be subject to the merchant’s terms and conditions when using the Amethpay Card, and it is your responsibility to review and agree to them before proceeding with an Amethpay Card Transaction. 33. No Warranty 33.1. Amethpay Services are provided \"as is,\" \"as available,\" and without any representation or warranty, whether express, implied, or statutory. Amethpay, and its directors, agents, joint ventures, employees, and suppliers, make no representations or warranties of any kind in relation to the services or the content, materials, information, and functions made available by Amethpay Services used or accessed through Amethpay Services, or for any breach of security associated with the transmission of sensitive information through Amethpay Services. 33.2. Amethpay does not warrant that Amethpay Services will be uninterrupted or error-free. Amethpay will not be liable for any service interruption beyond its control, including but not limited to, system failures or other interruptions that may affect the receipt, processing, acceptance, completion, or settlement of Amethpay Transactions or Amethpay Services. 33.3. Amethpay has no control over the products or services paid for using Amethpay Services. 33.4. Amethpay is not responsible for the quality, performance, or any other consequences arising from the use of products or services provided by third parties. 34. Governing Law and Jurisdiction These Terms and Conditions are governed by the laws of Poland.  Any dispute arising out of or related to these Terms and Conditions will be resolved in the competent courts of Poland. 35. Contact For any questions or concerns related to these Terms and Conditions, please contact us:  Amethpay  Address: Krawiecka, No. 3/5, Wroclaw, Poland - ZIP Code 50-148,  Email: contact@amethpay.com / support@amethpay.com  Phone: +48 538 364 720',
                                                                        ).image,
                                                                      ),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              3.0,
                                                                          color:
                                                                              Color(0x23000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            1.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(25.0),
                                                                        bottomRight:
                                                                            Radius.circular(25.0),
                                                                        topLeft:
                                                                            Radius.circular(25.0),
                                                                        topRight:
                                                                            Radius.circular(25.0),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              16.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 16.0, 5.0, 5.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '7sy5lqjv' /* General Terms and Conditions o... */,
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                            font: GoogleFonts.poppins(
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                            ),
                                                                                            color: Colors.white,
                                                                                            fontSize: 20.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        10.0,
                                                                        20.0,
                                                                        5.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x4B111417),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            3.0,
                                                                        color: Color(
                                                                            0x23000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          1.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            16.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 16.0, 5.0, 10.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'rk4485a2' /* The Amethpay App is owned by A... */,
                                                                                    ),
                                                                                    textAlign: TextAlign.justify,
                                                                                    style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                          font: GoogleFonts.poppins(
                                                                                            fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                          ),
                                                                                          color: Colors.white,
                                                                                          fontSize: 20.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).labelLarge.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).labelLarge.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
