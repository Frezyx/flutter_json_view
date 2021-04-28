import 'package:flutter/material.dart';
import 'package:json_view/src/builders/builders.dart';
import 'package:json_view/src/builders/primitive_builders/map_builder.dart';
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
    final valueWidget = _commonBuilder.build();
    if (valueWidget is JsonMapBuilder) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('${entry.key} :'), valueWidget],
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(entry.key), const Text(' : '), valueWidget],
    );
  }
}
