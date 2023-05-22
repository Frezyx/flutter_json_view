import 'package:flutter/material.dart';
import '../../theme/json_view_theme.dart';
import '../../widgets/widgets.dart';

class PrimitiveBuilder extends StatelessWidget {
  const PrimitiveBuilder(this.jsonObj, {required JsonViewTheme jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme;

  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    return _renderJsonWidgets(context);
  }

  Widget _renderJsonWidgets(BuildContext context) {
    if (jsonObj is int) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.intStyle,
      );
    } else if (jsonObj is double) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.doubleStyle,
      );
    } else if (jsonObj is String) {
      return PrimitiveJsonItem(
        jsonObj: '"$jsonObj"',
        textStyle: _jsonViewTheme.stringStyle,
      );
    } else if (jsonObj is bool) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.boolStyle,
      );
    }
    if (_jsonViewTheme.errorBuilder != null) {
      return _jsonViewTheme.errorBuilder!(context, jsonObj);
    }
    return const Text('error');
  }
}
