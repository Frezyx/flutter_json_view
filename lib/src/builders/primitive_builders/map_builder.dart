import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';
import 'package:json_view/src/widgets/widgets.dart';

class MapBuilder extends StatelessWidget {
  const MapBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
  }) : super(key: key);

  final Map<String, dynamic> jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
    return ListView(
      children: items,
    );
  }

  List<Widget> _buildJsonItems() {
    return jsonObj.entries
        .map(
          (e) => JsonItem(
            entry: e,
            jsonViewTheme: jsonViewTheme,
          ),
        )
        .toList();
  }
}
