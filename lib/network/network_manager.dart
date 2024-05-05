//

import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class HttpClient {
  HttpClient({
    required this.baseUrl,
    this.queryParameters,
  });

  final String baseUrl;
  final http.Client httpClient = http.Client();

  final Map<String, String>? queryParameters;

  Future<T> get<T>(String path) async {
    final url = '$baseUrl$path';
    var uri = Uri.parse(url);

    uri = uri.replace(queryParameters: queryParameters);

    final headers = {'Content-Type': 'application/json'};

    final rawResponse = await httpClient.get(uri, headers: headers);

    final convertedResponse = convertResponse(rawResponse);
    return convertedResponse;
  }

  T? convertResponse<T>(http.Response response) {
    if (response.body.isNotEmpty &&
        response.statusCode >= 200 &&
        response.statusCode < 300) {
      final decodedResponse = jsonDecode(response.body);

      print(
          'REQUEST URL : ${response.request?.url.path}, RESPONSE PAYLOAD : $decodedResponse');

      return decodedResponse;
    }

    return null;
  }
}
