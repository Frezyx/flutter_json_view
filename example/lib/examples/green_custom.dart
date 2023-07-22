import 'package:flutter/material.dart';
import 'package:flutter_json_view/flutter_json_view.dart';

void main() {
  runApp(JsonViewApp());
}

class JsonViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json View',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('flutter_json_view 1.1.2')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: JsonView.string(
            // '{"author":{"name": "Stas", "lastName": "Ilin", "githubLogin": "Frezyx", "age": 19, "man": true, "height": 186.5}}',
            '''{
"users": {
  "sammy" : {
    "username"  : "SammyShark",
    "location"  : "Indian Ocean",
    "online"    : true,
    "followers" : 987
  },
  "jesse" : {
    "username"  : "JesseOctopus",
    "location"  : "Pacific Ocean",
    "online"    : false,
    "followers" : 432
  },
  "drew" : {
    "username"  : "DrewSquid",
    "location"  : "Atlantic Ocean",
    "online"    : false,
    "followers" : 321
  },
  "jamie" : {
    "username"  : "JamieMantisShrimp",
    "location"  : "Pacific Ocean",
    "online"    : true,
    "followers" : 654
  }}
}''',
            theme: JsonViewTheme(
              keyStyle: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              doubleStyle: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
              intStyle: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
              stringStyle: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
              boolStyle: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
              closeIcon: Icon(
                Icons.close,
                color: Colors.green,
                size: 20,
              ),
              openIcon: Icon(
                Icons.add,
                color: Colors.green,
                size: 20,
              ),
              separator: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.arrow_right_alt_outlined,
                  size: 20,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
