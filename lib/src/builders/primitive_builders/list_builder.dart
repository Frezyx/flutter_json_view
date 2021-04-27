import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';
import 'package:json_view/src/widgets/widgets.dart';

class JsonListBuilder extends StatelessWidget {
  const JsonListBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
  }) : super(key: key);

  final List jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
    return ListView(
      children: items,
    );
  }

  List<Widget> _buildJsonItems() {
    return jsonObj
        .map(
          (e) => JsonListItem(
            value: e,
            jsonViewTheme: jsonViewTheme,
          ),
        )
        .toList();
  }
}
