import 'package:flutter/material.dart';
import 'package:json_view/src/builders/primitive_builders/primitive_builders.dart';
import 'package:json_view/src/theme/json_view_theme.dart';

import 'builders.dart';

class CommonJsonViewBuilder implements JsonViewBuilder {
  CommonJsonViewBuilder(this.jsonObj, {JsonViewTheme? jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme ?? JsonViewTheme();

  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build() {
    return _renderJsonWidgets();
  }

  @override
  JsonViewTheme? get jsonViewTheme => _jsonViewTheme;

  Widget _renderJsonWidgets() {
    if (jsonObj is Map<String, dynamic>) {
      return MapBuilder(
        jsonObj: jsonObj as Map<String, dynamic>,
        jsonViewTheme: _jsonViewTheme,
      );
    }
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
    );
  }
}
