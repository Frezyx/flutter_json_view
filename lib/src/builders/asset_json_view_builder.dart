import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';
import 'package:json_view/src/utils/utils.dart';

import 'builders.dart';

class AssetJsonViewBuilder implements JsonViewBuilder {
  AssetJsonViewBuilder(String path, {JsonViewTheme? jsonViewTheme})
      : _commonBuilder = CommonJsonViewBuilder(
          AssetLoader.getAssetJson(path),
          jsonViewTheme: jsonViewTheme ?? JsonViewTheme(),
        );

  final JsonViewBuilder _commonBuilder;

  @override
  Widget build() {
    return _commonBuilder.build();
  }

  @override
  JsonViewTheme? get jsonViewTheme => _commonBuilder.jsonViewTheme;
}
