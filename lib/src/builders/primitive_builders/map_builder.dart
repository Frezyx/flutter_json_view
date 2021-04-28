import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';
import 'package:json_view/src/widgets/widgets.dart';

class JsonMapBuilder extends StatefulWidget {
  const JsonMapBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
  }) : super(key: key);

  final Map<String, dynamic> jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  _JsonMapBuilderState createState() => _JsonMapBuilderState();
}

class _JsonMapBuilderState extends State<JsonMapBuilder> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: false,
        type: 'Object',
      );
    }
    final items = _buildJsonItems();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items,
    );
  }

  List<Widget> _buildJsonItems() {
    return widget.jsonObj.entries
        .map(
          (e) => JsonItem(
            entry: e,
            jsonViewTheme: widget.jsonViewTheme,
          ),
        )
        .toList();
  }
}
