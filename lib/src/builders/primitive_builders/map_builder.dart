import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class JsonMapBuilder extends StatefulWidget {
  const JsonMapBuilder(
      {Key? key,
      required this.jsonObj,
      required this.jsonViewTheme,
      this.listKeyName,
      this.keyName})
      : super(key: key);

  final Map<String, dynamic> jsonObj;
  final JsonViewTheme jsonViewTheme;
  final String? keyName;
  final String? listKeyName;

  @override
  State<JsonMapBuilder> createState() => _JsonMapBuilderState();
}

class _JsonMapBuilderState extends State<JsonMapBuilder> {
  bool isOpened = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isOpened = !isOpened),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isOpened
              ? widget.jsonViewTheme.closeIcon
              : widget.jsonViewTheme.openIcon,
          _buidItem(),
        ],
      ),
    );
  }

  Widget _buidItem() {
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: false,
        keyName: widget.keyName,
        jsonViewTheme: widget.jsonViewTheme,
      );
    }
    final items = _buildJsonItems();
    return SelectionArea(
      focusNode: FocusNode(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items,
      ),
    );
  }

  List<Widget> _buildJsonItems() {
    return widget.jsonObj.entries
        .map(
          (e) => JsonItem(
            entry: e,
            jsonViewTheme: widget.jsonViewTheme,
            keyName: widget.keyName,
            listKeyName: widget.listKeyName,
          ),
        )
        .toList();
  }
}
