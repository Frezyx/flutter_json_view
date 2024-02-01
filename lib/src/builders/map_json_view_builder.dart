import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

import 'builders.dart';

class MapJsonViewBuilder implements JsonViewBuilder {
  MapJsonViewBuilder(this.map,
      {JsonViewTheme? jsonViewTheme, String? keyName, String? listKeyName})
      : _commonBuilder = CommonJsonViewBuilder(
          map,
          keyName2: keyName,
          listKeyName: listKeyName,
          jsonViewTheme: jsonViewTheme ?? const JsonViewTheme(),
        );

  final Map<String, dynamic> map;
  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme get jsonViewTheme => _commonBuilder.jsonViewTheme;
  @override
  String? get keyName => _commonBuilder.keyName;
  @override
  String? get listKeyName => _commonBuilder.listKeyName;
}
