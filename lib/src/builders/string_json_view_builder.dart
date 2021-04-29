import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';
import 'package:json_view/src/utils/utils.dart';

import 'builders.dart';

class StringJsonViewBuilder implements JsonViewBuilder {
  StringJsonViewBuilder(this.jsonString, {JsonViewTheme? jsonViewTheme})
      : _commonBuilder = CommonJsonViewBuilder(
          JsonConverter.jsonStringToObject(jsonString),
          jsonViewTheme: jsonViewTheme ?? JsonViewTheme(),
        );

  final String jsonString;
  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme? get jsonViewTheme => _commonBuilder.jsonViewTheme;
}
