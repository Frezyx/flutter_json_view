import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';

import 'builders.dart';

class CommonJsonViewBuilder implements JsonViewBuilder {
  const CommonJsonViewBuilder(this.jsonObj, {JsonViewTheme? jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme;

  final dynamic jsonObj;
  final JsonViewTheme? _jsonViewTheme;

  @override
  Widget build() {
    final buildedWidgets = _renderJsonWidgets();
    return ListView(
      children: buildedWidgets,
    );
  }

  @override
  JsonViewTheme? get jsonViewTheme => _jsonViewTheme;

  List<Widget> _renderJsonWidgets() {
    if (jsonObj is Map<String, dynamic>) {
    } else if (jsonObj is List) {}
    return [];
  }
}
