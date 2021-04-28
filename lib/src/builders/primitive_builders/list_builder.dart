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
  bool isOpened = true;

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => setState(() => isOpened = !isOpened),
          child: Icon(isOpened ? Icons.arrow_drop_up : Icons.arrow_drop_down),
        ),
        _buildItem(items),
      ],
    );
  }

  Widget _buildItem(List<Widget> items) {
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: true,
        count: widget.jsonObj.length,
        type: Typer.getType(widget.jsonObj.first),
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
