import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FirebaseRealtimeCall {
  static Future<ApiCallResponse> call({
    List<String>? humidityList,
  }) {
    final humidity = _serializeList(humidityList);

    return ApiManager.instance.makeApiCall(
      callName: 'Firebase realtime',
      apiUrl:
          'https://swift-us-aa6f9-default-rtdb.firebaseio.com/FirebaseIOT.json',
      callType: ApiCallType.GET,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic bz(dynamic response) => getJsonField(
        response,
        r'''$.Buzzer''',
      );
  static dynamic hm(dynamic response) => getJsonField(
        response,
        r'''$.Humidity''',
      );
  static dynamic m1(dynamic response) => getJsonField(
        response,
        r'''$.Moist''',
      );
  static dynamic m2(dynamic response) => getJsonField(
        response,
        r'''$.Moist2''',
      );
  static dynamic pm(dynamic response) => getJsonField(
        response,
        r'''$.Pump''',
      );
  static dynamic tm(dynamic response) => getJsonField(
        response,
        r'''$.Temp''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
