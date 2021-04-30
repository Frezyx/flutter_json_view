import 'package:flutter/material.dart';
import 'package:json_view/json_view.dart';

void main() {
  runApp(JsonViewApp());
}

class JsonViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json View Theme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('json_view 0.1.0')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: JsonView.string(
            '{"people":{"name": "Stas", "lastName": "Ilin", "githubLogin": "Frezyx", "age": 19, "man": true, "height": 186}}',
          ),
        ),
      ),
    );
  }
}
