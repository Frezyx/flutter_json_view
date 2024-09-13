import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

import 'builders.dart';

class AssetJsonViewBuilder implements JsonViewBuilder {
  AssetJsonViewBuilder(this.path,
      {String? keyName, JsonViewTheme? jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme ?? const JsonViewTheme(),
        _keyName = keyName;
  final String path;
  final JsonViewTheme _jsonViewTheme;
  final String? _keyName;

  @override
  Widget build() {
    return JsonLoaderItem(
      path: path,
      jsonViewTheme: _jsonViewTheme,
      keyName: _keyName,
    );
  }

  @override
  JsonViewTheme get jsonViewTheme => _jsonViewTheme;

  @override
  String? get keyName => _keyName;

  @override
  String? get listKeyName => _keyName;
}
