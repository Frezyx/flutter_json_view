import 'package:flutter/material.dart';
import 'package:json_view/src/builders/builders.dart';
import 'package:json_view/src/theme/json_view_theme.dart';

class JsonView extends StatefulWidget {
  JsonView.string(
    String jsonString, {
    Key? key,
    JsonViewTheme? theme,
  })  : _builder = StringJsonViewBuilder(
          jsonString,
          jsonViewTheme: theme,
        ),
        super(key: key);

  JsonView.asset(
    String path, {
    Key? key,
    JsonViewTheme? theme,
  })  : _builder = AssetJsonViewBuilder(
          path,
          jsonViewTheme: theme,
        ),
        super(key: key);

  final JsonViewBuilder _builder;

  @override
  _JsonViewState createState() => _JsonViewState();
}

class _JsonViewState extends State<JsonView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: widget._builder.build(),
    );
  }
}
