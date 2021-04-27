import 'dart:convert';

abstract class JsonConverter {
  static Map<String, dynamic> jsonStringToObject(String jsonString) {
    assert(canConverToObject(jsonString));
    return json.decode(jsonString) as Map<String, dynamic>;
  }

  static bool canConverToObject(String jsonString) {
    try {
      if (json.decode(jsonString) is Map<String, dynamic>) {
        return true;
      } else if (json.decode(jsonString) is List) {
        return true;
      }
      return false;
    } catch (_) {
      return false;
    }
  }
}
