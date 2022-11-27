import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter_golf/json/api_items.dart';

Future<Results> searchGolfCourse(String searchWord) async {
  final queryParameters = {
    'keyword' : searchWord,
    'applicationId': FlutterConfig.get('RAKUTEN_APPLICATION_ID')
  };
  final uri = Uri.https(uriHost, uriPath, queryParameters);
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    print(response.body);
    return Results.fromJson(json.decode(response.body));
  } else {
    throw Exception('Can\'t get users');
  }
}