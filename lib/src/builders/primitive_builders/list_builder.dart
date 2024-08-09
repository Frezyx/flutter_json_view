import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/utils/typer.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class JsonListBuilder extends StatefulWidget {
  const JsonListBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
    this.objKey,
  }) : super(key: key);

  final String? objKey;
  final List jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  State<JsonListBuilder> createState() => JsonListBuilderState();
}

class JsonListBuilderState extends State<JsonListBuilder> {
  bool isOpened = true;

  collapse() {
    setState(() => isOpened = !isOpened);
  }

  Widget buildObjectKey() {
    if (widget.objKey != null) {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SelectableText(widget.objKey!, style: widget.jsonViewTheme.keyStyle),
        JsonViewSeparator(jsonViewTheme: widget.jsonViewTheme)
      ]);
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
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
            Text(" [", style: widget.jsonViewTheme.keyStyle),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.jsonViewTheme.defaultTextStyle.fontSize!),
          child: _buildItem(items),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: widget.jsonViewTheme.defaultTextStyle.fontSize!),
          child: Text(" ]", style: widget.jsonViewTheme.keyStyle),
        ),

      ],
    );
  }

  Widget _buildItem(List<Widget> items) {
    if (!isOpened) {
      return Padding(
        padding: EdgeInsets.only(
            left: widget.jsonViewTheme.defaultTextStyle.fontSize!),
        child: ClosedJsonObjectItem(
          isList: true,
          jsonViewTheme: widget.jsonViewTheme,
          count: widget.jsonObj.length,
          type: Typer.getType(
              widget.jsonObj.isNotEmpty ? widget.jsonObj.first : null),
        ),
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
}
