import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/utils/typer.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class JsonListBuilder extends StatefulWidget {
  const JsonListBuilder({Key? key, required this.jsonObj, required this.jsonViewTheme}) : super(key: key);

  final List jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  State<JsonListBuilder> createState() => _JsonListBuilderState();
}

class _JsonListBuilderState extends State<JsonListBuilder> {
  late bool isOpened;

  @override
  void initState() {
    isOpened = widget.jsonViewTheme.listInitialExpanded;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final items = _buildJsonItems();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => setState(() => isOpened = !isOpened),
          child: isOpened ? widget.jsonViewTheme.closeIcon : widget.jsonViewTheme.openIcon,
        ),
        _buildItem(items),
      ],
    );
  }

  Widget _buildItem(List<Widget> items) {
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: true,
        jsonViewTheme: widget.jsonViewTheme,
        count: widget.jsonObj.length,
        type: Typer.getType(widget.jsonObj.isNotEmpty ? widget.jsonObj.first : null),
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
