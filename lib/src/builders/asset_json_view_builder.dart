import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

import 'builders.dart';

class AssetJsonViewBuilder implements JsonViewBuilder {
  AssetJsonViewBuilder(this.path, this.onError, {JsonViewTheme? jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme ?? const JsonViewTheme();

  final String path;
  final dynamic onError;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build() {
    return JsonLoaderItem(
      path: path,
      onError: onError,
      jsonViewTheme: _jsonViewTheme,
    );
  }

  @override
  JsonViewTheme get jsonViewTheme => _jsonViewTheme;
}
