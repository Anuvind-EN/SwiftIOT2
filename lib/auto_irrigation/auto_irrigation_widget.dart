import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/instant_timer.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AutoIrrigationWidget extends StatefulWidget {
  const AutoIrrigationWidget({Key? key}) : super(key: key);

  @override
  _AutoIrrigationWidgetState createState() => _AutoIrrigationWidgetState();
}

class _AutoIrrigationWidgetState extends State<AutoIrrigationWidget>
    with TickerProviderStateMixin {
  ApiCallResponse? agsultce7;
  ApiCallResponse? apiResbce7;
  InstantTimer? instantTimer;
  ApiCallResponse? ahsultce7;
  ApiCallResponse? apdce7;
  ApiCallResponse? apiRegltce7;
  ApiCallResponse? apiace7;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Completer<ApiCallResponse>? _apiRequestCompleter1;
  double? sliderValue1;
  Completer<ApiCallResponse>? _apiRequestCompleter2;
  InstantTimer? as;
  double? sliderValue2;

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 500),
        callback: (timer) async {
          if (sliderValue1.toString() == '1') {
            apiResbce7 = await ThreshSendCall.call(
              thresh: 1,
            );
          } else {
            if (sliderValue1.toString() == '2') {
              agsultce7 = await ThreshSendCall.call(
                thresh: 2,
              );
            } else {
              if (sliderValue1.toString() == '3') {
                ahsultce7 = await ThreshSendCall.call(
                  thresh: 3,
                );
              } else {
                if (sliderValue1.toString() == '4') {
                  apdce7 = await ThreshSendCall.call(
                    thresh: 4,
                  );
                } else {
                  if (sliderValue1.toString() == '5') {
                    apiRegltce7 = await ThreshSendCall.call(
                      thresh: 5,
                    );
                  } else {
                    if (sliderValue1.toString() == '0') {
                      apiace7 = await ThreshSendCall.call(
                        thresh: 0,
                      );
                    }
                  }
                }
              }
            }
          }
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    as?.cancel();
    instantTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Stack(
        children: [
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    buttonSize: 46,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    icon: Icon(
                      Icons.chevron_left_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24,
                    ),
                    onPressed: () async {
                      context.pushNamed('MyProfile');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: GradientText(
                    'Auto Irrigation &\nManual Irrigation',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [
                      Color(0xFF1EC2A9),
                      FlutterFlowTheme.of(context).secondaryColor
                    ],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                  child: GradientText(
                    'Set Threshold ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [
                      FlutterFlowTheme.of(context).primaryColor,
                      Color(0xFF076250)
                    ],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 50),
                      child: Slider.adaptive(
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        inactiveColor: Color(0xFF12483F),
                        min: 0,
                        max: 5,
                        value: sliderValue1 ??= 0,
                        label: sliderValue1.toString(),
                        divisions: 5,
                        onChanged: (newValue) {
                          setState(() => sliderValue1 = newValue);
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 180,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Icon(
                                      Icons.cloud,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 52,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: (_apiRequestCompleter1 ??=
                                            Completer<ApiCallResponse>()
                                              ..complete(
                                                  FirebaseRealtimeCopyCall
                                                      .call()))
                                        .future,
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
                                      final textFirebaseRealtimeCopyResponse =
                                          snapshot.data!;
                                      return Text(
                                        FirebaseRealtimeCopyCall.am(
                                          textFirebaseRealtimeCopyResponse
                                              .jsonBody,
                                        ).toString(),
                                        style:
                                            FlutterFlowTheme.of(context).title1,
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Text(
                                      'Average Moisture',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 15,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 180,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.bar_chart,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 52,
                                  ),
                                ),
                                Expanded(
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: FirebaseRealtimeCopyCall.call(),
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
                                      final textFirebaseRealtimeCopyResponse =
                                          snapshot.data!;
                                      return InkWell(
                                        onTap: () async {
                                          await FirebaseRealtimeCopyCall.call();
                                          setState(() =>
                                              _apiRequestCompleter1 = null);
                                          await waitForApiRequestCompleter1(
                                              minWait: 500, maxWait: 1000);
                                        },
                                        child: Text(
                                          valueOrDefault<String>(
                                            FirebaseRealtimeCopyCall.st(
                                              textFirebaseRealtimeCopyResponse
                                                  .jsonBody,
                                            ).toString(),
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                              ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Text(
                                      'Status',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 15,
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
                ),
              ],
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    buttonSize: 46,
                    fillColor: FlutterFlowTheme.of(context).primaryBackground,
                    icon: Icon(
                      Icons.chevron_left_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: GradientText(
                    'Auto Irrigation/Manual Irrigation',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [Color(0xFF4BDEBE), Color(0xFF12483F)],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 2),
                  child: GradientText(
                    'Set Threshold ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                    colors: [Color(0xFF59F0CB), Color(0xFF12483F)],
                    gradientDirection: GradientDirection.ltr,
                    gradientType: GradientType.linear,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(420, 50, 420, 50),
                      child: Slider.adaptive(
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        inactiveColor: Color(0xFF12483F),
                        min: 0,
                        max: 5,
                        value: sliderValue2 ??= 0,
                        label: sliderValue2.toString(),
                        divisions: 5,
                        onChanged: (newValue) {
                          setState(() => sliderValue2 = newValue);
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 270),
                    child: Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 180,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Icon(
                                      Icons.cloud,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 52,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: (_apiRequestCompleter2 ??=
                                            Completer<ApiCallResponse>()
                                              ..complete(
                                                  FirebaseRealtimeCopyCall
                                                      .call()))
                                        .future,
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
                                      final textFirebaseRealtimeCopyResponse =
                                          snapshot.data!;
                                      return Text(
                                        FirebaseRealtimeCopyCall.am(
                                          textFirebaseRealtimeCopyResponse
                                              .jsonBody,
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 40,
                                            ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Text(
                                      'Average Moisture',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 26,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 180,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.bar_chart,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 69,
                                  ),
                                ),
                                Expanded(
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: FirebaseRealtimeCopyCall.call(),
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
                                      final textFirebaseRealtimeCopyResponse =
                                          snapshot.data!;
                                      return InkWell(
                                        onTap: () async {
                                          as = InstantTimer.periodic(
                                            duration:
                                                Duration(milliseconds: 100),
                                            callback: (timer) async {
                                              setState(() =>
                                                  _apiRequestCompleter2 = null);
                                              await waitForApiRequestCompleter2(
                                                  minWait: 500, maxWait: 1000);
                                            },
                                            startImmediately: true,
                                          );
                                        },
                                        child: Text(
                                          valueOrDefault<String>(
                                            FirebaseRealtimeCopyCall.st(
                                              textFirebaseRealtimeCopyResponse
                                                  .jsonBody,
                                            ).toString(),
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                fontSize: 40,
                                              ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Text(
                                      'Status',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 26,
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
                ),
              ],
            ),
        ],
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
}
