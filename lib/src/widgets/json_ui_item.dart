import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/builders/builders.dart';
import 'package:flutter_json_view/src/builders/primitive_builders/map_builder.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class JsonItem extends StatelessWidget {
  JsonItem(
      {Key? key,
      required this.entry,
      required this.jsonViewTheme,
      String? keyName,
      String? listKeyName})
      : _commonBuilder = CommonJsonViewBuilder(entry.value,
            jsonViewTheme: jsonViewTheme,
            keyName: keyName,
            listKeyName: listKeyName),
        super(key: key);

  final MapEntry<String, dynamic> entry;
  final JsonViewTheme jsonViewTheme;
  final CommonJsonViewBuilder _commonBuilder;

  @override
  Widget build(BuildContext context) {
    final valueWidget = _commonBuilder.build();
    if (valueWidget is JsonMapBuilder) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(entry.key, style: jsonViewTheme.keyStyle),
              JsonViewSeparator(jsonViewTheme: jsonViewTheme),
            ],
          ),
          valueWidget
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          entry.key,
          style: jsonViewTheme.keyStyle,
        ),
        JsonViewSeparator(jsonViewTheme: jsonViewTheme),
        valueWidget
      ],
    );
  }
}
