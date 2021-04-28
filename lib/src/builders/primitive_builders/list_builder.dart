import 'package:flutter/material.dart';
import 'package:json_view/src/theme/json_view_theme.dart';
import 'package:json_view/src/utils/typer.dart';
import 'package:json_view/src/widgets/widgets.dart';

class JsonListBuilder extends StatefulWidget {
  const JsonListBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
  }) : super(key: key);

  final List jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  _JsonListBuilderState createState() => _JsonListBuilderState();
}

class _JsonListBuilderState extends State<JsonListBuilder> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: true,
        count: widget.jsonObj.length,
        type: _getType(),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items,
    );
  }

  List<Widget> _buildJsonItems() {
    return widget.jsonObj
        .map(
          (e) => JsonListItem(
            value: e,
            jsonViewTheme: widget.jsonViewTheme,
          ),
        )
        .toList();
  }

  String _getType() {
    final firstItem = widget.jsonObj.first;
    return Typer.isObject(firstItem)
        ? 'Object'
        : Typer.isList(firstItem)
            ? 'Array'
            : widget.jsonObj.first.runtimeType.toString();
  }
}
