import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';

class JsonListItem extends StatelessWidget {
  const JsonListItem({
    Key? key,
    required this.value,
    required this.jsonViewTheme,
  }) : super(key: key);

  final dynamic value;
  final JsonViewTheme jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$value'),
      ],
    );
  }
}
