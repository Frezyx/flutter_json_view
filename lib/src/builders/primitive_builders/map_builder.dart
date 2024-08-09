import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class JsonMapBuilder extends StatefulWidget {
  const JsonMapBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
    this.jsonKey,
  }) : super(key: key);

  final String? jsonKey;
  final Map<String, dynamic> jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  State<JsonMapBuilder> createState() => _JsonMapBuilderState();
}

class _JsonMapBuilderState extends State<JsonMapBuilder> {
  bool isOpened = true;

  Widget buildObjectKey() {
    if (widget.jsonKey != null) {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SelectableText(widget.jsonKey!, style: widget.jsonViewTheme.keyStyle),
        JsonViewSeparator(jsonViewTheme: widget.jsonViewTheme)
      ]);
    }
    return Container();
  }

  collapse() {
    setState(() => isOpened = !isOpened);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: collapse,
              child: isOpened
                  ? widget.jsonViewTheme.closeIcon
                  : widget.jsonViewTheme.openIcon,
            ),
            buildObjectKey(),
            Text(" {", style: widget.jsonViewTheme.keyStyle),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.jsonViewTheme.defaultTextStyle.fontSize!),
          child: _buildItems(),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.jsonViewTheme.defaultTextStyle.fontSize!),
          child: Text(" }", style: widget.jsonViewTheme.keyStyle),
        ),

      ],
    );
  }

  Widget _buildItems() {
    final items = _buildJsonItems();
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: false,
        jsonViewTheme: widget.jsonViewTheme,
        type: 'Object',
        count: items.length,
      );
    }

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
