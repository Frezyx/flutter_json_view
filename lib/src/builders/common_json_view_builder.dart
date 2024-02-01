import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/builders/primitive_builders/primitive_builders.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

import 'builders.dart';
import 'primitive_builders/primitive_builder.dart';

class CommonJsonViewBuilder implements JsonViewBuilder {
  CommonJsonViewBuilder(this.jsonObj,
      {String? keyName2,
      String? listKeyName,
      required JsonViewTheme jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme,
        _keyName = keyName2,
        _listKeyName = listKeyName;

  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;
  final String? _keyName;
  final String? _listKeyName;
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
        keyName: _keyName,
      );
    } else if (jsonObj is List) {
      return JsonListBuilder(
        jsonObj: jsonObj as List,
        jsonViewTheme: _jsonViewTheme,
        keyName: listKeyName,
      );
    }
    return PrimitiveBuilder(
      jsonObj,
      jsonViewTheme: _jsonViewTheme,
    );
  }

  @override
  String? get keyName => _keyName;

  @override
  String? get listKeyName => _listKeyName;
}
