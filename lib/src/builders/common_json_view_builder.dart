import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/builders/primitive_builders/primitive_builders.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

import 'builders.dart';
import 'primitive_builders/primitive_builder.dart';

class CommonJsonViewBuilder implements JsonViewBuilder {
  CommonJsonViewBuilder(this.jsonObj,
      {required JsonViewTheme jsonViewTheme, this.jsonKey})
      : _jsonViewTheme = jsonViewTheme;

  final String? jsonKey;
  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build() {
    return _renderJsonWidgets();
  }

  @override
  JsonViewTheme get jsonViewTheme => _jsonViewTheme;

  Widget _renderJsonWidgets() {
    if (jsonObj is Map<String, dynamic>) {
      return JsonMapBuilder(
        jsonObj: jsonObj as Map<String, dynamic>,
        jsonViewTheme: _jsonViewTheme,
        jsonKey: jsonKey,
      );
    } else if (jsonObj is List) {
      return JsonListBuilder(
        jsonObj: jsonObj as List,
        jsonViewTheme: _jsonViewTheme,
      );
    }
    return PrimitiveBuilder(
      jsonObj,
      jsonViewTheme: _jsonViewTheme,
      jsonKey: jsonKey,
    );
  }
}
