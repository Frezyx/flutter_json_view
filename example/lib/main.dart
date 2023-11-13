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
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatefulWidget {
  const _HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_json_view 1.1.2')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Collapsible', style: theme.textTheme.headlineSmall),
              const SizedBox(height: 2),
              JsonView.string(
                '{"author":{"name": "Stas", "lastName": "Ilin", "githubLogin": "Frezyx", "age": 19, "man": true, "height": 186.5}}',
                theme: const JsonViewTheme(viewType: JsonViewType.collapsible),
              ),
              const SizedBox(height: 10),
              Text('Base', style: theme.textTheme.headlineSmall),
              const SizedBox(height: 2),
              JsonView.string(
                '{"author":{"name": "Stas", "lastName": "Ilin", "githubLogin": "Frezyx", "age": 19, "man": true, "height": 186.5}}',
                theme: const JsonViewTheme(viewType: JsonViewType.base),
              ),
              const SizedBox(height: 10),
              Text('Big data', style: theme.textTheme.headlineSmall),
              const SizedBox(height: 2),
              SizedBox(
                height: 400,
                child: JsonView.asset(
                  'assets/github_user.json',
                  theme:
                      const JsonViewTheme(viewType: JsonViewType.collapsible),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
