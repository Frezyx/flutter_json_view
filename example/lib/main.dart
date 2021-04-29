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
        child:
            // JsonView.asset('assets/test.json'),
            JsonView.string(
          // '{"team":{"value": "New", "onclick": "CreateDoc()"}}',
          '["Sunday", "Monday", "Tuesday", {"team":{"value1": "New","value2": "New","value3": "New","value4": "New","value5": "New","value6": "New","value7": "New","value8": "New","value9": "New", "onclick": "CreateDoc()"}}, "Thursday", "Friday", ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]]',
          // open +
          //     '{"employees":[{"name":"Shyam", "email":"shyamjaiswal@gmail.com"},{"name":"Bob", "email":"bob32@gmail.com"},{"name":"Jai", "email":"jai87@gmail.com"}]},' *
          //         50 +
          //     '{"employees":[{"name":"Shyam", "email":"shyamjaiswal@gmail.com"},{"name":"Bob", "email":"bob32@gmail.com"},{"name":"Jai", "email":"jai87@gmail.com"}]}' +
          //     close,
          theme: JsonViewTheme(
            stringStyle: TextStyle(
              color: Colors.amber,
            ),
            boolStyle: TextStyle(
              color: Colors.red,
            ),
            intStyle: TextStyle(
              color: Colors.green,
            ),
            doubleStyle: TextStyle(
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
