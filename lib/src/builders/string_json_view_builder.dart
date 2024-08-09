import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/utils/utils.dart';

import 'builders.dart';

class StringJsonViewBuilder implements JsonViewBuilder {
  StringJsonViewBuilder(this.jsonString,
      {JsonViewTheme? jsonViewTheme, this.jsonKey})
      : _commonBuilder = CommonJsonViewBuilder(
          JsonConverter.jsonStringToObject(jsonString),
          jsonViewTheme: jsonViewTheme ?? const JsonViewTheme(),
          jsonKey: jsonKey,
        );

  final String? jsonKey;
  final String jsonString;
  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme get jsonViewTheme => _commonBuilder.jsonViewTheme;
}
