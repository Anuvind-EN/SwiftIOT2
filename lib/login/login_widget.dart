import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailTextController1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  TextEditingController? emailTextController2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController1 = TextEditingController();
    passwordTextController1 = TextEditingController();
    passwordVisibility1 = false;
    emailTextController2 = TextEditingController();
    passwordTextController2 = TextEditingController();
    passwordVisibility2 = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    emailTextController1?.dispose();
    passwordTextController1?.dispose();
    emailTextController2?.dispose();
    passwordTextController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF076250),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Image.asset(
                        'assets/images/swift-high-resolution-logo-color-on-transparent-background.png',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
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
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Image.asset(
                          'assets/images/swift-high-resolution-logo-color-on-transparent-background.png',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextFormField(
                                controller: emailTextController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  hintText: 'Your email...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0x9AFFFFFF),
                                        fontSize: 19,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF212E2A),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context).white,
                                      fontSize: 19,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Please fill in a valid email address...';
                                  }

                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: TextFormField(
                                  controller: passwordTextController1,
                                  obscureText: !passwordVisibility1,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your password here...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0x9AFFFFFF),
                                          fontSize: 17,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Color(0xFF212E2A),
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordVisibility1 =
                                            !passwordVisibility1,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        passwordVisibility1
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0x80FFFFFF),
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return 'That password doesn\'t match.';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    GoRouter.of(context).prepareAuthEvent();

                                    final user = await signInWithEmail(
                                      context,
                                      emailTextController1!.text,
                                      passwordTextController1!.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    context.goNamedAuth('MyProfile', mounted);
                                  },
                                  text: 'Login',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: Color(0xFF212E2A),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 44, 0, 30),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 6),
                                      child: AutoSizeText(
                                        'Don’t have an account yet? ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkBG,
                                              fontSize: 15,
                                            ),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          'Register',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 200),
                                            ),
                                          },
                                        );
                                      },
                                      text: 'Register',
                                      options: FFButtonOptions(
                                        width: 100,
                                        height: 32,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(0),
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
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 40, 24, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: TextFormField(
                                controller: emailTextController2,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  hintText: 'Your email...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0x9AFFFFFF),
                                        fontSize: 25,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF212E2A),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context).white,
                                      fontSize: 25,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: TextFormField(
                                  controller: passwordTextController2,
                                  obscureText: !passwordVisibility2,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your password here...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0x9AFFFFFF),
                                          fontSize: 25,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Color(0xFF212E2A),
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordVisibility2 =
                                            !passwordVisibility2,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        passwordVisibility2
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0x80FFFFFF),
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();

                                  final user = await signInWithEmail(
                                    context,
                                    emailTextController2!.text,
                                    passwordTextController2!.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  context.goNamedAuth('MyProfile', mounted);
                                },
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: 250,
                                  height: 50,
                                  color: Color(0xFF212E2A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 44, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 6),
                                    child: AutoSizeText(
                                      'Don’t have an account yet? ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 20,
                                          ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'Register',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 200),
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Register',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 32,
                                      color: Color(0xFF076250),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
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
            ],
          ),
        ),
      ),
    );
  }
}
