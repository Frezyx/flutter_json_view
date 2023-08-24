import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/builders/builders.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

import 'widgets/base_json_view.dart';

const _encoder = JsonEncoder.withIndent('  ');

class JsonView extends StatefulWidget {
  /// The constructor creates a widget
  /// from a json string
  JsonView.string(
    String jsonString, {
    Key? key,
    JsonViewTheme? theme,
  })  : _stringData = jsonString,
        _mapData = null,
        _assetsPath = null,
        _builder = StringJsonViewBuilder(
          jsonString,
          jsonViewTheme: theme,
        ),
        super(key: key);

  /// The constructor creates a widget
  /// from a json file in assets
  ///
  /// Note: Initially, you must add the correct json file
  /// to the assets folder and specify the path to it in pubspec.yaml
  JsonView.asset(
    String path, {
    Key? key,
    JsonViewTheme? theme,
  })  : _assetsPath = path,
        _mapData = null,
        _stringData = null,
        _builder = AssetJsonViewBuilder(
          path,
          jsonViewTheme: theme,
        ),
        super(key: key);

  /// The constructor creates a widget
  /// from a json map model
  JsonView.map(
    Map<String, dynamic> map, {
    Key? key,
    JsonViewTheme? theme,
  })  : _mapData = map,
        _stringData = null,
        _assetsPath = null,
        _builder = MapJsonViewBuilder(
          map,
          jsonViewTheme: theme,
        ),
        super(key: key);

  final Map<String, dynamic>? _mapData;
  final String? _stringData;
  final String? _assetsPath;
  final JsonViewBuilder _builder;
  static PrimitiveJsonItemBuilder? primitiveJsonItemBuilder;

  @override
  State<JsonView> createState() => _JsonViewState();
}

class _JsonViewState extends State<JsonView> {
  @override
  Widget build(BuildContext context) {
    final viewType = widget._builder.jsonViewTheme.viewType;
    Widget jsonView = const SizedBox();
    switch (viewType) {
      case JsonViewType.base:
        final jsonData = widget._mapData != null
            ? _encoder.convert(widget._mapData!)
            : widget._stringData != null
                ? _encoder.convert(json.decode(widget._stringData!))
                : null;
        jsonView = BaseJsonView(
          jsonData: jsonData,
          assetsPath: widget._assetsPath,
          jsonViewTheme: widget._builder.jsonViewTheme,
        );
        break;
      case JsonViewType.collapsible:
        jsonView = widget._builder.build();
        break;
    }
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      color: widget._builder.jsonViewTheme.backgroundColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: jsonView,
        ),
      ),
    );
  }
}
