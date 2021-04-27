import 'package:flutter/material.dart';
import 'package:json_view/src/builders/builders.dart';

class JsonView extends StatefulWidget {
  JsonView.string(
    String jsonString, {
    Key? key,
  })  : _builder = StringJsonViewBuilder(jsonString),
        super(key: key);

  JsonView.asset(
    String path, {
    Key? key,
  })  : _builder = AssetJsonViewBuilder(path),
        super(key: key);

  final JsonViewBuilder _builder;

  @override
  _JsonViewState createState() => _JsonViewState();
}

class _JsonViewState extends State<JsonView> {
  @override
  Widget build(BuildContext context) {
    return widget._builder.build();
  }
}
