import 'package:flutter/material.dart';
import 'package:json_view/json_view.dart';
import 'package:json_view/src/builders/builders.dart';
import 'package:json_view/src/utils/utils.dart';

class JsonLoaderItem extends StatefulWidget {
  const JsonLoaderItem({
    Key? key,
    required this.path,
    required this.jsonViewTheme,
  }) : super(key: key);
  final String path;
  final JsonViewTheme jsonViewTheme;

  @override
  _JsonLoaderItemState createState() => _JsonLoaderItemState();
}

class _JsonLoaderItemState extends State<JsonLoaderItem> {
  JsonViewBuilder? _commonBuilder;

  @override
  void initState() {
    _initializeBuilder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _commonBuilder?.build() ??
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        );
  }

  Future<void> _initializeBuilder() async {
    final json = await AssetLoader.getAssetJson(widget.path);
    setState(() {
      _commonBuilder = CommonJsonViewBuilder(
        json,
        jsonViewTheme: widget.jsonViewTheme,
      );
    });
  }
}
