import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/builders/builders.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

class JsonItem extends StatefulWidget {
  JsonItem({
    Key? key,
    required this.entry,
    required this.jsonViewTheme,
  })  : _commonBuilder = CommonJsonViewBuilder(
          entry.value,
          jsonViewTheme: jsonViewTheme,
          jsonKey:entry.key,
        ),
        super(key: key);

  final MapEntry<String, dynamic> entry;
  final JsonViewTheme jsonViewTheme;
  final CommonJsonViewBuilder _commonBuilder;

  @override
  State<JsonItem> createState() => _JsonItemState();
}

class _JsonItemState extends State<JsonItem> {
  bool isOpened = true;

  @override
  Widget build(BuildContext context) {
    final valueWidget = widget._commonBuilder.build();
    return valueWidget;
  }

}