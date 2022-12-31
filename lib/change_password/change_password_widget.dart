import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({Key? key}) : super(key: key);

  @override
  _ChangePasswordWidgetState createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  TextEditingController? emailTextController1;
  TextEditingController? emailTextController2;
  final formKey1 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey2 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailTextController1 = TextEditingController();
    emailTextController2 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    emailTextController1?.dispose();
    emailTextController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
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
        List<UsersRecord> changePasswordUsersRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final changePasswordUsersRecord =
            changePasswordUsersRecordList.isNotEmpty
                ? changePasswordUsersRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.084,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        buttonSize: 48,
                        icon: Icon(
                          Icons.chevron_left_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 30,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                      Text(
                        'Change Password',
                        style: FlutterFlowTheme.of(context).title2,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            desktop: false,
                          ))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Form(
                                      key: formKey1,
                                      autovalidateMode: AutovalidateMode.always,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4,
                                                  color: Color(0x230E151B),
                                                  offset: Offset(0, 2),
                                                )
                                              ],
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(16),
                                                bottomRight:
                                                    Radius.circular(16),
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2, 0, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 12, 0, 0),
                                                    child: Text(
                                                      'Enter your email and we will send a reset password link to your email for you to update it.',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 16,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 16, 16, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          emailTextController1,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Email address here...',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 15,
                                                                ),
                                                        hintText:
                                                            'We will send a link to your email...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 16,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        prefixIcon: Icon(
                                                          Icons.email_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 15,
                                                              ),
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 16, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 26),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              if (emailTextController1!
                                                                  .text
                                                                  .isEmpty) {
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Email required!',
                                                                    ),
                                                                  ),
                                                                );
                                                                return;
                                                              }
                                                              await resetPassword(
                                                                email:
                                                                    emailTextController1!
                                                                        .text,
                                                                context:
                                                                    context,
                                                              );
                                                              context.pop();
                                                            },
                                                            text: 'Send Link',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 230,
                                                              height: 50,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                              elevation: 3,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
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
                                  ],
                                ),
                              ],
                            ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Form(
                                          key: formKey2,
                                          autovalidateMode:
                                              AutovalidateMode.always,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    150, 0, 150, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x230E151B),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(16),
                                                      bottomRight:
                                                          Radius.circular(16),
                                                      topLeft:
                                                          Radius.circular(0),
                                                      topRight:
                                                          Radius.circular(0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                2, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(16,
                                                                      12, 0, 0),
                                                          child: Text(
                                                            'Enter your email and we will send a reset password link to your email for you to update it.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 24,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      16,
                                                                      16,
                                                                      0),
                                                          child: TextFormField(
                                                            controller:
                                                                emailTextController2,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Email address here...',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        fontSize:
                                                                            19,
                                                                      ),
                                                              hintText:
                                                                  'We will send a link to your email...',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        fontSize:
                                                                            19,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              filled: true,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              prefixIcon: Icon(
                                                                Icons
                                                                    .email_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 20,
                                                                ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .emailAddress,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      16, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            26),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    if (emailTextController2!
                                                                        .text
                                                                        .isEmpty) {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Email required!',
                                                                          ),
                                                                        ),
                                                                      );
                                                                      return;
                                                                    }
                                                                    await resetPassword(
                                                                      email: emailTextController2!
                                                                          .text,
                                                                      context:
                                                                          context,
                                                                    );
                                                                    context
                                                                        .pop();
                                                                  },
                                                                  text:
                                                                      'Send Link',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 230,
                                                                    height: 50,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Outfit',
                                                                          fontSize:
                                                                              22,
                                                                        ),
                                                                    elevation:
                                                                        3,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
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
                                ],
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
        );
      },
    );
  }
}
