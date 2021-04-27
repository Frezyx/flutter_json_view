import 'package:flutter/material.dart';
import 'package:json_view/src/builders/builders.dart';
import 'package:json_view/src/theme/json_view_theme.dart';

class JsonItem extends StatelessWidget {
  JsonItem({
    Key? key,
    required this.entry,
    required this.jsonViewTheme,
  })   : _commonBuilder = CommonJsonViewBuilder(
          entry.value,
          jsonViewTheme: jsonViewTheme,
        ),
        super(key: key);

  final MapEntry<String, dynamic> entry;
  final JsonViewTheme jsonViewTheme;
  final CommonJsonViewBuilder _commonBuilder;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(entry.key),
        const Text(' : '),
        _commonBuilder.build(),
      ],
    );
  }
}
