import 'dart:convert';

import 'package:google_places_plus/src/utils/api_constants.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  static Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Uri uri = Uri.parse("${ApiConstants.baseUrl}$endpoint");
    if (queryParameters != null) {
      Map<String, String> stringQueryParameters = queryParameters.map(
        (key, value) => MapEntry(key, value.toString()),
      );
      uri = uri.replace(queryParameters: stringQueryParameters);
    }
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(data);

      return jsonData;
    } else {
      throw Exception(
        'Failed to fetch data. Status code: ${response.statusCode}',
      );
    }
  }
}
