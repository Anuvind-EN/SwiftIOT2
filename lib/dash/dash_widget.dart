import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DashWidget extends StatefulWidget {
  const DashWidget({Key? key}) : super(key: key);

  @override
  _DashWidgetState createState() => _DashWidgetState();
}

class _DashWidgetState extends State<DashWidget> {
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<ApiCallResponse>(
                future: FirebaseRealtimeCall.call(),
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
                  final textFirebaseRealtimeResponse = snapshot.data!;
                  return Text(
                    valueOrDefault<String>(
                      getJsonField(
                        textFirebaseRealtimeResponse.jsonBody,
                        r'''$.tm''',
                      ).toString(),
                      '0',
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
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
