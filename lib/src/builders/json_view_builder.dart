import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

abstract class JsonViewBuilder {
  JsonViewTheme get jsonViewTheme;
  String? get keyName;
  String? get listKeyName;
  Widget build();
}
