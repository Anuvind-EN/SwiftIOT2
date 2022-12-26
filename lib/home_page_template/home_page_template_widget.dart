import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/instant_timer.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePageTemplateWidget extends StatefulWidget {
  const HomePageTemplateWidget({Key? key}) : super(key: key);

  @override
  _HomePageTemplateWidgetState createState() => _HomePageTemplateWidgetState();
}

class _HomePageTemplateWidgetState extends State<HomePageTemplateWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 90),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  Completer<ApiCallResponse>? _apiRequestCompleter1;
  Completer<ApiCallResponse>? _apiRequestCompleter4;
  InstantTimer? instantTimer;
  Completer<ApiCallResponse>? _apiRequestCompleter2;
  Completer<ApiCallResponse>? _apiRequestCompleter3;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 5000),
        callback: (timer) async {
          setState(() => _apiRequestCompleter4 = null);
          await waitForApiRequestCompleter4(minWait: 100, maxWait: 200);
          setState(() => _apiRequestCompleter1 = null);
          await waitForApiRequestCompleter1(minWait: 100, maxWait: 200);
          setState(() => _apiRequestCompleter2 = null);
          await waitForApiRequestCompleter2(minWait: 100, maxWait: 200);
          setState(() => _apiRequestCompleter3 = null);
          await waitForApiRequestCompleter3(minWait: 100, maxWait: 200);
        },
        startImmediately: true,
      );
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    instantTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 44,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          alignment: AlignmentDirectional(0, 0),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dashboard',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'You Can View realtime data of your farm',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 4, 8, 4),
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            constraints: BoxConstraints(
                                              maxWidth: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.38,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                width: 1,
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, -1),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 16, 16, 16),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Realtime Data',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 4, 0, 0),
                                                    child: Text(
                                                      'All value',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          12),
                                                                  child: FutureBuilder<
                                                                      ApiCallResponse>(
                                                                    future: (_apiRequestCompleter4 ??= Completer<
                                                                            ApiCallResponse>()
                                                                          ..complete(
                                                                              FirebaseRealtimeCall.call()))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            child:
                                                                                SpinKitRipple(
                                                                              color: Color(0xFF6FE8CB),
                                                                              size: 100,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final progressBarFirebaseRealtimeResponse =
                                                                          snapshot
                                                                              .data!;
                                                                      return CircularPercentIndicator(
                                                                        percent:
                                                                            1,
                                                                        radius:
                                                                            60,
                                                                        lineWidth:
                                                                            12,
                                                                        animation:
                                                                            false,
                                                                        progressColor:
                                                                            Colors.transparent,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        center:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            FirebaseRealtimeCall.hm(
                                                                              progressBarFirebaseRealtimeResponse.jsonBody,
                                                                            ).toString(),
                                                                            '0',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).title2,
                                                                        ),
                                                                        startAngle:
                                                                            109,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Humidity',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          12),
                                                                  child: FutureBuilder<
                                                                      ApiCallResponse>(
                                                                    future: (_apiRequestCompleter1 ??= Completer<
                                                                            ApiCallResponse>()
                                                                          ..complete(
                                                                              FirebaseRealtimeCall.call()))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            child:
                                                                                SpinKitRipple(
                                                                              color: Color(0xFF6FE8CB),
                                                                              size: 100,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final progressBarFirebaseRealtimeResponse =
                                                                          snapshot
                                                                              .data!;
                                                                      return CircularPercentIndicator(
                                                                        percent:
                                                                            1,
                                                                        radius:
                                                                            60,
                                                                        lineWidth:
                                                                            12,
                                                                        animation:
                                                                            false,
                                                                        progressColor:
                                                                            Colors.transparent,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        center:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            FirebaseRealtimeCall.tm(
                                                                              progressBarFirebaseRealtimeResponse.jsonBody,
                                                                            ).toString(),
                                                                            '0',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).title2,
                                                                        ),
                                                                        startAngle:
                                                                            109,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Temperature',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          12),
                                                                  child: FutureBuilder<
                                                                      ApiCallResponse>(
                                                                    future: (_apiRequestCompleter2 ??= Completer<
                                                                            ApiCallResponse>()
                                                                          ..complete(
                                                                              FirebaseRealtimeCall.call()))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            child:
                                                                                SpinKitRipple(
                                                                              color: Color(0xFF6FE8CB),
                                                                              size: 100,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final progressBarFirebaseRealtimeResponse =
                                                                          snapshot
                                                                              .data!;
                                                                      return CircularPercentIndicator(
                                                                        percent:
                                                                            1,
                                                                        radius:
                                                                            60,
                                                                        lineWidth:
                                                                            12,
                                                                        animation:
                                                                            false,
                                                                        progressColor:
                                                                            Colors.transparent,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        center:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            FirebaseRealtimeCall.m1(
                                                                              progressBarFirebaseRealtimeResponse.jsonBody,
                                                                            ).toString(),
                                                                            '0',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).title2,
                                                                        ),
                                                                        startAngle:
                                                                            109,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Moisture 1',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          12),
                                                                  child: FutureBuilder<
                                                                      ApiCallResponse>(
                                                                    future: (_apiRequestCompleter3 ??= Completer<
                                                                            ApiCallResponse>()
                                                                          ..complete(
                                                                              FirebaseRealtimeCall.call()))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                100,
                                                                            child:
                                                                                SpinKitRipple(
                                                                              color: Color(0xFF6FE8CB),
                                                                              size: 100,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      final progressBarFirebaseRealtimeResponse =
                                                                          snapshot
                                                                              .data!;
                                                                      return CircularPercentIndicator(
                                                                        percent:
                                                                            1,
                                                                        radius:
                                                                            60,
                                                                        lineWidth:
                                                                            12,
                                                                        animation:
                                                                            false,
                                                                        progressColor:
                                                                            Colors.transparent,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        center:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            FirebaseRealtimeCall.m2(
                                                                              progressBarFirebaseRealtimeResponse.jsonBody,
                                                                            ).toString(),
                                                                            '0',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).title2,
                                                                        ),
                                                                        startAngle:
                                                                            109,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Moisture 2',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2,
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
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                      ))
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 4, 4, 4),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 16),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(0, 2),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16, 16,
                                                                  16, 16),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Active Users',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFFFCFCFC),
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'A small summary of your users base',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Color(
                                                                        0xFFFCFCFC),
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        12,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                LinearPercentIndicator(
                                                                  percent: 0.2,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.32,
                                                                  lineHeight:
                                                                      16,
                                                                  animation:
                                                                      true,
                                                                  progressColor:
                                                                      Color(
                                                                          0xFFBADED6),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFFCFCFC),
                                                                  barRadius: Radius
                                                                      .circular(
                                                                          50),
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, -1),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 16, 16, 16),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Total User Count',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title3,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        12),
                                                            child: Text(
                                                              'An overview of all your users on your platform.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText2,
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.4,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .supervisor_account_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  size: 44,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    '56.4k',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title1,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation']!),
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
                                ],
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                setState(() => _apiRequestCompleter4 = null);
                                await waitForApiRequestCompleter4(
                                    minWait: 1000, maxWait: 2000);
                                setState(() => _apiRequestCompleter1 = null);
                                await waitForApiRequestCompleter1(
                                    minWait: 1000, maxWait: 2000);
                                setState(() => _apiRequestCompleter2 = null);
                                await waitForApiRequestCompleter2(
                                    minWait: 1000, maxWait: 2000);
                                setState(() => _apiRequestCompleter3 = null);
                                await waitForApiRequestCompleter3(
                                    minWait: 1000, maxWait: 2000);
                              },
                              text: 'Refresh',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
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
      ),
    );
  }

  Future waitForApiRequestCompleter1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleter4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleter2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleter3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
