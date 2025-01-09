import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<dynamic>> loadJsonArray(String path) async {
  final jsonString = await rootBundle.loadString(path);
  return json.decode(jsonString) as List<dynamic>;
}

Future<Map<String, dynamic>> loadJsonObject(String path) async {
  final jsonString = await rootBundle.loadString(path);
  return json.decode(jsonString) as Map<String, dynamic>;
}
