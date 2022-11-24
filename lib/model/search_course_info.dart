import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_golf/constant/importer_constant.dart';
import 'package:flutter_golf/json/api_items.dart';

const firstSearch = '花祭';
final firstSearchUtf8 = utf8.encode(firstSearch);

Future searchGolfCourse() async {
  final queryParameters = {
    'keyword' : firstSearchUtf8
  };
  final uri = Uri.https(uriHost, uriPath, queryParameters);
  final response = await http.get(uri, headers: {
    'applicationId': FlutterConfig.get('RAKUTEN_APPLICATION_ID')
  });
  if (response.statusCode == 200) {
    return Results.fromJson(json.decode(response.body));
  } else {
    throw Exception('Can\'t get users');
  }
}