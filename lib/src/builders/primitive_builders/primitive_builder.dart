import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';
import 'package:json_view/src/widgets/widgets.dart';

class PrimitiveBuilder extends StatelessWidget {
  const PrimitiveBuilder(this.jsonObj, {required JsonViewTheme jsonViewTheme})
      : _jsonViewTheme = jsonViewTheme;

  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    return _renderJsonWidgets();
  }

  Widget _renderJsonWidgets() {
    if (jsonObj is int) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
      );
    } else if (jsonObj is double) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
      );
    } else if (jsonObj is String) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
      );
    } else if (jsonObj is bool) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
      );
    }
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
    );
  }
}
