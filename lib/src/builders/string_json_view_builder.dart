import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/utils/utils.dart';

import 'builders.dart';

class StringJsonViewBuilder implements JsonViewBuilder {
  StringJsonViewBuilder(this.jsonString, this.onError,
      {JsonViewTheme? jsonViewTheme})
      : _commonBuilder = CommonJsonViewBuilder(
          JsonConverter.jsonStringToObject(jsonString, onError),
          jsonViewTheme: jsonViewTheme ?? const JsonViewTheme(),
        );

  final String jsonString;
  final dynamic onError;
  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme get jsonViewTheme => _commonBuilder.jsonViewTheme;
}
