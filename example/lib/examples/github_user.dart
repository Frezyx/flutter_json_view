import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

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
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('flutter_json_view 0.2.0')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: JsonView.asset('assets/github_user.json'),
        ),
      ),
    );
  }
}
