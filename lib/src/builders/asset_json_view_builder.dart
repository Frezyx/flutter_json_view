import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';

import 'builders.dart';

class AssetJsonViewBuilder implements JsonViewBuilder {
  const AssetJsonViewBuilder(this.path, {JsonViewTheme? jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme;

  final String path;
  final JsonViewTheme? _jsonViewTheme;

  @override
  Widget build() {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  JsonViewTheme? get jsonViewTheme => _jsonViewTheme;
}
