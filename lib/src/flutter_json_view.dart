import 'package:flutter/material.dart';
import 'package:flutter_json_view/src/builders/builders.dart';
import 'package:flutter_json_view/src/theme/json_view_theme.dart';

class JsonView extends StatefulWidget {
  /// The constructor creates a widget
  /// from a json map model
  JsonView.map(
    Map<String, dynamic> map, {
    Key? key,
    JsonViewTheme? theme,
  })  : _builder = MapJsonViewBuilder(
          map,
          jsonViewTheme: theme,
        ),
        super(key: key);

  /// The constructor creates a widget
  /// from a json string
  JsonView.string(
    String jsonString, {
    Key? key,
    JsonViewTheme? theme,
  })  : _builder = StringJsonViewBuilder(
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
