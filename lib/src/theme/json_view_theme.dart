import 'package:flutter/material.dart';

class JsonViewTheme {
  const JsonViewTheme({
    this.keyStyle = const TextStyle(color: Colors.purple),
    this.doubleStyle = const TextStyle(color: Colors.blue),
    this.intStyle = const TextStyle(),
    this.boolStyle = const TextStyle(),
    this.stringStyle = const TextStyle(),
    this.closeIcon = const Icon(Icons.arrow_drop_up),
    this.openIcon = const Icon(Icons.arrow_drop_down),
    this.errorWidget = const Text('error'),
    this.seporator = const Text(' : '),
    this.loadingWidget = const CircularProgressIndicator(),
  });

  final TextStyle keyStyle;
  final TextStyle doubleStyle;
  final TextStyle intStyle;
  final TextStyle boolStyle;
  final TextStyle stringStyle;
  final Widget closeIcon;
  final Widget openIcon;
  final Widget errorWidget;
  final Widget seporator;
  final Widget loadingWidget;
}
