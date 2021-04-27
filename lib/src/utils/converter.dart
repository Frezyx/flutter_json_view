import 'dart:convert';

abstract class JsonConverter {
  static Map<String, dynamic> jsonStringToObject(String jsonString) {
    return json.decode(jsonString) as Map<String, dynamic>;
  }
}
