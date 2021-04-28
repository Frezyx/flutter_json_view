abstract class Typer {
  static bool isPrimitive(dynamic value) {
    return value is double || value is int || value is String || value is bool;
  }

  static bool isObject(dynamic value) {
    return !isList(value) && !isPrimitive(value);
  }

  static bool isList(dynamic value) {
    return value is List;
  }
}
