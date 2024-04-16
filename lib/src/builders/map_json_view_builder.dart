import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

import 'builders.dart';

class MapJsonViewBuilder implements JsonViewBuilder {
  MapJsonViewBuilder(this.map, this.onError, {JsonViewTheme? jsonViewTheme})
      : _commonBuilder = CommonJsonViewBuilder(
          map,
          jsonViewTheme: jsonViewTheme ?? const JsonViewTheme(),
        );

  final Map<String, dynamic> map;
  final dynamic onError;
  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme get jsonViewTheme => _commonBuilder.jsonViewTheme;
}
