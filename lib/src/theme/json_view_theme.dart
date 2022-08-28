import 'package:flutter/material.dart';

class JsonViewTheme {
  const JsonViewTheme({
    this.keyStyle = const TextStyle(color: Colors.green),
    this.doubleStyle = const TextStyle(color: Colors.blue),
    this.intStyle = const TextStyle(color: Colors.blue),
    this.boolStyle = const TextStyle(color: Colors.green),
    this.stringStyle = const TextStyle(color: Colors.amber),
    this.closeIcon = const Icon(Icons.arrow_drop_up, size: 18),
    this.openIcon = const Icon(Icons.arrow_drop_down, size: 18),
    this.errorWidget = const Text('error'),
    this.separator = const Text(' : '),
    this.loadingWidget = const CircularProgressIndicator(),
    this.backgroundColor = Colors.transparent,
  });

  /// Style of json Object keys name displaying
  final TextStyle keyStyle;

  /// Style of json Object [double] values displaying
  final TextStyle doubleStyle;

  /// Style of json Object [int] values displaying
  final TextStyle intStyle;

  /// Style of json Object [bool] values displaying
  final TextStyle boolStyle;

  /// Style of json Object [String] values displaying
  final TextStyle stringStyle;

  /// This icon is shown when the object's fields are hidden
  final Widget closeIcon;

  /// This icon is shown when the object's fields are shown
  final Widget openIcon;

  /// This widget will be shown at the moment
  /// when the package cannot handle the value.
  final Widget errorWidget;

  /// Key and value separator widget
  final Widget separator;

  /// When loading data from a file, (web in future)
  /// this widget will be shown at the time of processing
  final Widget loadingWidget;

  /// Background color of json view
  final Color backgroundColor;
}
