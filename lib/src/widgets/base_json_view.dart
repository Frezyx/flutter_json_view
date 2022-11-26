import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

class BaseJsonView extends StatelessWidget {
  const BaseJsonView({
    Key? key,
    this.jsonData,
    required this.jsonViewTheme,
  }) : super(key: key);

  final String? jsonData;
  final JsonViewTheme jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    if (jsonData != null) {
      return Text(
        jsonData!,
        style: jsonViewTheme.defaultTextStyle,
      );
    }
    return SizedBox();
  }
}
