import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileWidget extends StatefulWidget {
  const MyProfileWidget({Key? key}) : super(key: key);

  @override
  _MyProfileWidgetState createState() => _MyProfileWidgetState();
}

class _MyProfileWidgetState extends State<MyProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: SpinKitRipple(
                color: Color(0xFF6FE8CB),
                size: 100,
              ),
            ),
          );
        }
        final myProfileUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: SafeArea(
            child: Stack(
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBlack,
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: Image.asset(
                                            'assets/images/swift-high-resolution-logo-color-on-transparent-background.png',
                                            width: 200,
                                            height: 200,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          200, 0, 200, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 25, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 12, 0, 0),
                                                  child: Text(
                                                    'Account Information',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 40,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'EditProfile',
                                                      queryParams: {
                                                        'displayName':
                                                            serializeParam(
                                                          myProfileUsersRecord,
                                                          ParamType.Document,
                                                        ),
                                                        'email': serializeParam(
                                                          myProfileUsersRecord,
                                                          ParamType.Document,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'displayName':
                                                            myProfileUsersRecord,
                                                        'email':
                                                            myProfileUsersRecord,
                                                      },
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      20,
                                                                      0,
                                                                      20),
                                                          child: Text(
                                                            'Edit Profile',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 24,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    12, 0),
                                                        child: Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                height: 2,
                                                thickness: 1,
                                                indent: 0,
                                                endIndent: 0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'ChangePassword');
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16,
                                                                    20, 0, 20),
                                                        child: Text(
                                                          'Change Password',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 24,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 12, 0),
                                                      child: Icon(
                                                        Icons.arrow_forward_ios,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                height: 2,
                                                thickness: 1,
                                                indent: 0,
                                                endIndent: 0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  context
                                                      .pushNamed('Achievments');
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16,
                                                                    20, 0, 20),
                                                        child: Text(
                                                          'Achievments',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 24,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 12, 0),
                                                      child: Icon(
                                                        Icons.arrow_forward_ios,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                height: 2,
                                                thickness: 1,
                                                indent: 0,
                                                endIndent: 0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 150),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 16),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                await signOut();

                                                context.goNamedAuth(
                                                    'SplashScreen', mounted);
                                              },
                                              text: 'Log Out',
                                              icon: Icon(
                                                Icons.logout,
                                                size: 15,
                                              ),
                                              options: FFButtonOptions(
                                                width: 200,
                                                height: 75,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 32,
                                                        ),
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF076250),
                                                  width: 5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'App Version v1.0',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 18,
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
                        ],
                      ),
                    ],
                  ),
                if (responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
                  Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBlack,
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: Image.asset(
                                            'assets/images/swift-high-resolution-logo-color-on-transparent-background.png',
                                            width: 200,
                                            height: 200,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(7),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 25, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 0, 0),
                                                child: Text(
                                                  'Account Information',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 16, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'EditProfile',
                                                    queryParams: {
                                                      'displayName':
                                                          serializeParam(
                                                        myProfileUsersRecord,
                                                        ParamType.Document,
                                                      ),
                                                      'email': serializeParam(
                                                        myProfileUsersRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'displayName':
                                                          myProfileUsersRecord,
                                                      'email':
                                                          myProfileUsersRecord,
                                                    },
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16,
                                                                    20, 0, 20),
                                                        child: Text(
                                                          'Edit Profile',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 20,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 12, 0),
                                                      child: Icon(
                                                        Icons.arrow_forward_ios,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              height: 2,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                    'ChangePassword');
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 20,
                                                                  0, 20),
                                                      child: Text(
                                                        'Change Password',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 20,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 12, 0),
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              height: 2,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                context
                                                    .pushNamed('Achievments');
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 20,
                                                                  0, 20),
                                                      child: Text(
                                                        'Achievments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 20,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 12, 0),
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              height: 2,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 140),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 10),
                                            child: Text(
                                              'App Version v2.0',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 10),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                await signOut();

                                                context.goNamedAuth(
                                                    'SplashScreen', mounted);
                                              },
                                              text: 'Log Out',
                                              icon: Icon(
                                                Icons.logout,
                                                size: 15,
                                              ),
                                              options: FFButtonOptions(
                                                width: 150,
                                                height: 50,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 20,
                                                        ),
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF076250),
                                                  width: 5,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
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
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
