import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';

class JsonItem extends StatelessWidget {
  const JsonItem({
    Key? key,
    required this.entry,
    required this.jsonViewTheme,
  }) : super(key: key);

  final MapEntry<String, dynamic> entry;
  final JsonViewTheme jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    return Text('${entry.key} : ${entry.value}');
  }
}
