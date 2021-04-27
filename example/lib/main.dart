import 'package:flutter/material.dart';
import 'package:json_view/json_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  final open = '[';
  final close = ']';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 10, right: 10),
        child: JsonView.string(
            // '{"value": "New", "onclick": "CreateDoc()"}',
            // '["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]',
            open +
                '{"employees":[{"name":"Shyam", "email":"shyamjaiswal@gmail.com"},{"name":"Bob", "email":"bob32@gmail.com"},{"name":"Jai", "email":"jai87@gmail.com"}]},' *
                    50 +
                '{"employees":[{"name":"Shyam", "email":"shyamjaiswal@gmail.com"},{"name":"Bob", "email":"bob32@gmail.com"},{"name":"Jai", "email":"jai87@gmail.com"}]}' +
                close),
      ),
    );
  }
}
