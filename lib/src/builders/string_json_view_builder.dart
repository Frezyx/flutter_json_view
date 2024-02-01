import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/utils/utils.dart';

import 'builders.dart';

class StringJsonViewBuilder implements JsonViewBuilder {
  StringJsonViewBuilder(this.jsonString,
      {JsonViewTheme? jsonViewTheme, String? keyName, String? listKeyName})
      : _commonBuilder = CommonJsonViewBuilder(
          JsonConverter.jsonStringToObject(jsonString),
          jsonViewTheme: jsonViewTheme ?? const JsonViewTheme(),
          keyName: keyName,
          listKeyName: listKeyName,
        ),
        _keyName = keyName,
        _listKeyName = listKeyName;

  final String jsonString;
  final JsonViewBuilder _commonBuilder;
  final String? _keyName;
  final String? _listKeyName;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme get jsonViewTheme => _commonBuilder.jsonViewTheme;

  @override
  String? get keyName => _keyName;

  @override
  String? get listKeyName => _listKeyName;
}
