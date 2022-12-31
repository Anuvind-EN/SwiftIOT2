import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DbshWidget extends StatefulWidget {
  const DbshWidget({Key? key}) : super(key: key);

  @override
  _DbshWidgetState createState() => _DbshWidgetState();
}

class _DbshWidgetState extends State<DbshWidget> with TickerProviderStateMixin {
  ApiCallResponse? apiResulskq;
  ApiCallResponse? apiResulwr;
  bool? switchValue4;
  ApiCallResponse? apiResult12;
  ApiCallResponse? apiResult2;
  bool? switchValue3;
  ApiCallResponse? apiResultku2;
  ApiCallResponse? apiResult09r;
  ApiCallResponse? apiResultnkq;
  bool? switchValue2;
  ApiCallResponse? apiResultkub;
  ApiCallResponse? apiResultp9;
  ApiCallResponse? apiResultpd8;
  bool? switchValue1;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                FutureBuilder<ApiCallResponse>(
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
                    final columnFirebaseRealtimeCopyResponse = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          borderWidth: 1,
                                          buttonSize: 50,
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 30,
                                          ),
                                          onPressed: () async {
                                            context.pop();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: GradientText(
                                      'SOIL DATA',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Outfit',
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      colors: [
                                        Color(0xFF076250),
                                        Color(0xFF4BDEBE)
                                      ],
                                      gradientDirection: GradientDirection.ltr,
                                      gradientType: GradientType.linear,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 10),
                                    child: Wrap(
                                      spacing: 10,
                                      runSpacing: 10,
                                      alignment: WrapAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.spaceBetween,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.39,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.17,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .temperatureHigh,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future:
                                                        FirebaseRealtimeCopyCall
                                                            .call(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 100,
                                                            height: 100,
                                                            child:
                                                                SpinKitRipple(
                                                              color: Color(
                                                                  0xFF6FE8CB),
                                                              size: 100,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final textFirebaseRealtimeCopyResponse =
                                                          snapshot.data!;
                                                      return Text(
                                                        valueOrDefault<String>(
                                                          FirebaseRealtimeCopyCall
                                                              .tm(
                                                            textFirebaseRealtimeCopyResponse
                                                                .jsonBody,
                                                          ).toString(),
                                                          'null',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 28,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  'Temperature',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 15,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.39,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.17,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: FaIcon(
                                                    FontAwesomeIcons.cloud,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 32,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future:
                                                        FirebaseRealtimeCopyCall
                                                            .call(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 100,
                                                            height: 100,
                                                            child:
                                                                SpinKitRipple(
                                                              color: Color(
                                                                  0xFF6FE8CB),
                                                              size: 100,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final textFirebaseRealtimeCopyResponse =
                                                          snapshot.data!;
                                                      return Text(
                                                        valueOrDefault<String>(
                                                          FirebaseRealtimeCopyCall
                                                              .hm(
                                                            textFirebaseRealtimeCopyResponse
                                                                .jsonBody,
                                                          ).toString(),
                                                          'null',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 28,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  'Humidity',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 15,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.39,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.17,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: FaIcon(
                                                    FontAwesomeIcons.water,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 32,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      FirebaseRealtimeCopyCall
                                                          .m1(
                                                        columnFirebaseRealtimeCopyResponse
                                                            .jsonBody,
                                                      ).toString(),
                                                      'null',
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1,
                                                  ),
                                                ),
                                                Text(
                                                  'Average Soil Moisture',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 15,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Wrap(
                                      spacing: 16,
                                      runSpacing: 16,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          height: 160,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Icon(
                                                      Icons.filter_1,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 32,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future:
                                                        FirebaseRealtimeCopyCall
                                                            .call(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 100,
                                                            height: 100,
                                                            child:
                                                                SpinKitRipple(
                                                              color: Color(
                                                                  0xFF6FE8CB),
                                                              size: 100,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final textFirebaseRealtimeCopyResponse =
                                                          snapshot.data!;
                                                      return Text(
                                                        valueOrDefault<String>(
                                                          FirebaseRealtimeCopyCall
                                                              .m1(
                                                            textFirebaseRealtimeCopyResponse
                                                                .jsonBody,
                                                          ).toString(),
                                                          'null',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 28,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  'Sensor 1',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 15,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          height: 160,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Icon(
                                                    Icons.filter_2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 32,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future:
                                                        FirebaseRealtimeCopyCall
                                                            .call(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 100,
                                                            height: 100,
                                                            child:
                                                                SpinKitRipple(
                                                              color: Color(
                                                                  0xFF6FE8CB),
                                                              size: 100,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final textFirebaseRealtimeCopyResponse =
                                                          snapshot.data!;
                                                      return Text(
                                                        valueOrDefault<String>(
                                                          FirebaseRealtimeCopyCall
                                                              .m2(
                                                            textFirebaseRealtimeCopyResponse
                                                                .jsonBody,
                                                          ).toString(),
                                                          'null',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize: 28,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  'Sensor 2',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 15,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 10),
                                    child: Wrap(
                                      spacing: 16,
                                      runSpacing: 16,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          height: 130,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: InkWell(
                                              onTap: () async {
                                                apiResultkub =
                                                    await BuzzerSendCall.call();

                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Switch.adaptive(
                                                    value: switchValue1 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          switchValue1 =
                                                              newValue!);
                                                      if (newValue!) {
                                                        apiResultpd8 =
                                                            await BuzzerSendCall
                                                                .call(
                                                          buzzer: 1,
                                                        );

                                                        setState(() {});
                                                      } else {
                                                        apiResultp9 =
                                                            await BuzzerSendCall
                                                                .call(
                                                          buzzer: 0,
                                                        );

                                                        setState(() {});
                                                      }
                                                    },
                                                    activeColor:
                                                        Color(0xFF076250),
                                                    activeTrackColor:
                                                        Color(0xFF59F0CB),
                                                    inactiveTrackColor:
                                                        Color(0xFF59F0CB),
                                                    inactiveThumbColor:
                                                        Color(0xFF076250),
                                                  ),
                                                  Text(
                                                    'Buzzer',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 25,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.3,
                                          height: 130,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Switch.adaptive(
                                                  value: switchValue2 ??= false,
                                                  onChanged: (newValue) async {
                                                    setState(() =>
                                                        switchValue2 =
                                                            newValue!);
                                                    if (newValue!) {
                                                      apiResultnkq =
                                                          await PumpSendCall
                                                              .call(
                                                        pump: 1,
                                                      );

                                                      setState(() {});
                                                    } else {
                                                      apiResult09r =
                                                          await PumpSendCall
                                                              .call(
                                                        pump: 0,
                                                      );

                                                      setState(() {});
                                                    }
                                                  },
                                                  activeColor:
                                                      Color(0xFF076250),
                                                  activeTrackColor:
                                                      Color(0xFF59F0CB),
                                                  inactiveTrackColor:
                                                      Color(0xFF59F0CB),
                                                  inactiveThumbColor:
                                                      Color(0xFF076250),
                                                ),
                                                Text(
                                                  'Pump',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 25,
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
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                FutureBuilder<ApiCallResponse>(
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
                    final columnFirebaseRealtimeCopyResponse = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(-1, 0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 90,
                                              icon: Icon(
                                                Icons.arrow_back_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 60,
                                              ),
                                              onPressed: () async {
                                                context.pop();
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                      child: Wrap(
                                        spacing: 120,
                                        runSpacing: 120,
                                        alignment: WrapAlignment.center,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 2),
                                              child: GradientText(
                                                'SOIL DATA',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 50,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                colors: [
                                                  Color(0xFF12483F),
                                                  Color(0xFF4BDEBE)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .temperatureHigh,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future:
                                                          FirebaseRealtimeCopyCall
                                                              .call(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 100,
                                                              height: 100,
                                                              child:
                                                                  SpinKitRipple(
                                                                color: Color(
                                                                    0xFF6FE8CB),
                                                                size: 100,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final textFirebaseRealtimeCopyResponse =
                                                            snapshot.data!;
                                                        return Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FirebaseRealtimeCopyCall
                                                                .tm(
                                                              textFirebaseRealtimeCopyResponse
                                                                  .jsonBody,
                                                            ).toString(),
                                                            'null',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 40,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'Temperature',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 23,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: FaIcon(
                                                      FontAwesomeIcons.cloud,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 50,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future:
                                                          FirebaseRealtimeCopyCall
                                                              .call(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 100,
                                                              height: 100,
                                                              child:
                                                                  SpinKitRipple(
                                                                color: Color(
                                                                    0xFF6FE8CB),
                                                                size: 100,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final textFirebaseRealtimeCopyResponse =
                                                            snapshot.data!;
                                                        return Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FirebaseRealtimeCopyCall
                                                                .hm(
                                                              textFirebaseRealtimeCopyResponse
                                                                  .jsonBody,
                                                            ).toString(),
                                                            'null',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 40,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'Humidity',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 23,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: FaIcon(
                                                      FontAwesomeIcons.water,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 50,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        FirebaseRealtimeCopyCall
                                                            .am(
                                                          columnFirebaseRealtimeCopyResponse
                                                              .jsonBody,
                                                        ).toString(),
                                                        'null',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 40,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Average Soil Moisture',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 23,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 50, 0, 10),
                                      child: Wrap(
                                        spacing: 325,
                                        runSpacing: 0,
                                        alignment: WrapAlignment.center,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: InkWell(
                                                onTap: () async {
                                                  apiResultku2 =
                                                      await BuzzerSendCall
                                                          .call();

                                                  setState(() {});
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Switch.adaptive(
                                                      value: switchValue3 ??=
                                                          false,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() =>
                                                            switchValue3 =
                                                                newValue!);
                                                        if (newValue!) {
                                                          apiResult2 =
                                                              await BuzzerSendCall
                                                                  .call(
                                                            buzzer: 1,
                                                          );

                                                          setState(() {});
                                                        } else {
                                                          apiResult12 =
                                                              await BuzzerSendCall
                                                                  .call(
                                                            buzzer: 0,
                                                          );

                                                          setState(() {});
                                                        }
                                                      },
                                                      activeColor:
                                                          Color(0xFFC0EEE3),
                                                      activeTrackColor:
                                                          Color(0xFF12483F),
                                                      inactiveTrackColor:
                                                          Color(0xFFC0EEE3),
                                                      inactiveThumbColor:
                                                          Color(0xFF12483F),
                                                    ),
                                                    Text(
                                                      'Buzzer',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 30,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Switch.adaptive(
                                                    value: switchValue4 ??=
                                                        false,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          switchValue4 =
                                                              newValue!);
                                                      if (newValue!) {
                                                        apiResulskq =
                                                            await PumpSendCall
                                                                .call(
                                                          pump: 1,
                                                        );

                                                        setState(() {});
                                                      } else {
                                                        apiResulwr =
                                                            await PumpSendCall
                                                                .call(
                                                          pump: 0,
                                                        );

                                                        setState(() {});
                                                      }
                                                    },
                                                    activeColor:
                                                        Color(0xFF12483F),
                                                    activeTrackColor:
                                                        Color(0xFFC0EEE3),
                                                    inactiveTrackColor:
                                                        Color(0xFFC0EEE3),
                                                    inactiveThumbColor:
                                                        Color(0xFF12483F),
                                                  ),
                                                  Text(
                                                    'Pump',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 30,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 50, 0, 10),
                                      child: Wrap(
                                        spacing: 120,
                                        runSpacing: 120,
                                        alignment: WrapAlignment.center,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                      child: Icon(
                                                        Icons.filter_1,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 50,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future:
                                                          FirebaseRealtimeCopyCall
                                                              .call(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 100,
                                                              height: 100,
                                                              child:
                                                                  SpinKitRipple(
                                                                color: Color(
                                                                    0xFF6FE8CB),
                                                                size: 100,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final textFirebaseRealtimeCopyResponse =
                                                            snapshot.data!;
                                                        return Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FirebaseRealtimeCopyCall
                                                                .m1(
                                                              textFirebaseRealtimeCopyResponse
                                                                  .jsonBody,
                                                            ).toString(),
                                                            'null',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 40,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'Moisture 1st  Sensor',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 23,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Icon(
                                                      Icons.filter_2,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 50,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future:
                                                          FirebaseRealtimeCopyCall
                                                              .call(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 100,
                                                              height: 100,
                                                              child:
                                                                  SpinKitRipple(
                                                                color: Color(
                                                                    0xFF6FE8CB),
                                                                size: 100,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final textFirebaseRealtimeCopyResponse =
                                                            snapshot.data!;
                                                        return Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FirebaseRealtimeCopyCall
                                                                .m2(
                                                              textFirebaseRealtimeCopyResponse
                                                                  .jsonBody,
                                                            ).toString(),
                                                            'null',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 40,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    'Moisture 2nd Sensor',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 23,
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
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
