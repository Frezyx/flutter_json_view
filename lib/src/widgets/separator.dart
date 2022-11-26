import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

class JsonViewSeparator extends StatelessWidget {
  const JsonViewSeparator({
    Key? key,
    required this.jsonViewTheme,
  }) : super(key: key);

  final JsonViewTheme jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    return jsonViewTheme.separator ??
        Text(' : ', style: jsonViewTheme.defaultTextStyle);
  }
}
