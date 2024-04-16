import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';
import 'package:flutter_json_view/src/utils/utils.dart';

class BaseJsonView extends StatefulWidget {
  const BaseJsonView({
    Key? key,
    required this.jsonViewTheme,
    this.jsonData,
    required this.onError,
    this.assetsPath,
  }) : super(key: key);

  final String? jsonData;
  final Widget onError;
  final JsonViewTheme jsonViewTheme;
  final String? assetsPath;

  @override
  State<BaseJsonView> createState() => _BaseJsonViewState();
}

class _BaseJsonViewState extends State<BaseJsonView> {
  String? _assetsJsonString;

  @override
  void initState() {
    _loadAssetsJson();
    super.initState();
  }

  Future<void> _loadAssetsJson() async {
    if (widget.assetsPath != null) {
      final json =
          await AssetLoader.getAssetJson(widget.assetsPath!, widget.onError);
      _assetsJsonString = _encoder.convert(json);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.jsonData != null || _assetsJsonString != null) {
      return SelectableText(
        (widget.jsonData ?? _assetsJsonString)!,
        style: widget.jsonViewTheme.defaultTextStyle,
      );
    }
    return const SizedBox();
  }
}

const _encoder = JsonEncoder.withIndent('  ');
