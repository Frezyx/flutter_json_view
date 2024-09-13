import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';
import 'package:flutter_json_view/src/widgets/widgets.dart';

class JsonMapBuilder extends StatefulWidget {
  const JsonMapBuilder({
    Key? key,
    required this.jsonObj,
    required this.jsonViewTheme,
  }) : super(key: key);

  final Map<String, dynamic> jsonObj;
  final JsonViewTheme jsonViewTheme;

  @override
  State<JsonMapBuilder> createState() => _JsonMapBuilderState();
}

class _JsonMapBuilderState extends State<JsonMapBuilder> {
  late bool isOpened;

  @override
  void initState() {
    isOpened = widget.jsonViewTheme.mapInitialExpanded;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => setState(() => isOpened = !isOpened),
          child: isOpened ? widget.jsonViewTheme.closeIcon : widget.jsonViewTheme.openIcon,
        ),
        _buidItem(),
      ],
    );
  }

  Widget _buidItem() {
    if (!isOpened) {
      return ClosedJsonObjectItem(
        isList: false,
        jsonViewTheme: widget.jsonViewTheme,
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
