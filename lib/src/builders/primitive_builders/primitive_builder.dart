import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class PrimitiveBuilder extends StatelessWidget {
  const PrimitiveBuilder(
    this.jsonObj, {
    Key? key,
    required JsonViewTheme jsonViewTheme,
    this.jsonKey,
  })  : _jsonViewTheme = jsonViewTheme,
        super(key: key);

  final String? jsonKey;
  final dynamic jsonObj;
  final JsonViewTheme _jsonViewTheme;

  Widget buildObjectKey() {
    if (jsonKey != null) {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SelectableText(jsonKey!, style: _jsonViewTheme.keyStyle),
        JsonViewSeparator(jsonViewTheme: _jsonViewTheme)
      ]);
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: _jsonViewTheme.defaultTextStyle.fontSize!),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildObjectKey(),
          _renderJsonWidgets(context)
        ],
      ),
    );
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
    } else if (jsonObj == null) {
      return PrimitiveJsonItem(
        jsonObj: jsonObj,
        textStyle: _jsonViewTheme.boolStyle,
      );
    }
    return _jsonViewTheme.errorBuilder?.call(context, jsonObj) ??
        const Text('error');
  }
}
