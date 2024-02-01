import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/utils/typer.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class JsonListBuilder extends StatefulWidget {
  const JsonListBuilder(
      {Key? key,
      required this.jsonObj,
      required this.jsonViewTheme,
      this.keyName,
      this.listKeyName})
      : super(key: key);

  final List jsonObj;
  final JsonViewTheme jsonViewTheme;
  final String? keyName;
  final String? listKeyName;

  @override
  State<JsonListBuilder> createState() => _JsonListBuilderState();
}

class _JsonListBuilderState extends State<JsonListBuilder> {
  bool isOpened = true;

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
    return GestureDetector(
      onTap: () => setState(() => isOpened = !isOpened),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isOpened
              ? widget.jsonViewTheme.closeIcon
              : widget.jsonViewTheme.openIcon,
          _buildItem(items),
        ],
      ),
    );
  }

  Widget _buildItem(List<Widget> items) {
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: true,
        jsonViewTheme: widget.jsonViewTheme,
        count: widget.jsonObj.length,
        keyName: widget.listKeyName,
        type: Typer.getType(
            widget.jsonObj.isNotEmpty ? widget.jsonObj.first : null),
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
            keyName: widget.keyName,
            listKeyName: widget.listKeyName,
          ),
        )
        .toList();
  }
}
