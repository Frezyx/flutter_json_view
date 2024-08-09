import 'package:flutter/material.dart';

enum JsonViewType {
  base,
  collapsible,
}

typedef ErrorBuilder = Widget Function(BuildContext context, Object? object);

class JsonViewTheme {
  const JsonViewTheme({
    this.defaultTextStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    TextStyle? keyStyle,
    TextStyle? doubleStyle,
    TextStyle? intStyle,
    TextStyle? boolStyle,
    TextStyle? nullStyle,
    TextStyle? stringStyle,
    this.closeIcon = const Icon(
      Icons.keyboard_arrow_down,
      size: 18,
      color: Colors.white,
    ),
    this.openIcon = const Icon(
      Icons.chevron_right,
      size: 18,
      color: Colors.white,
    ),
    this.errorWidget = const Text('error'),
    this.errorBuilder,
    this.separator,
    this.loadingWidget = const CircularProgressIndicator(),
    this.viewType = JsonViewType.collapsible,
    this.backgroundColor = const Color(0xFF1E1F28),
  })  : _keyStyle = keyStyle ?? const TextStyle(color: Colors.deepPurple),
        _doubleStyle = doubleStyle ?? const TextStyle(color: Colors.blue),
        _intStyle = intStyle ?? const TextStyle(color: Colors.blue),
        _boolStyle = boolStyle ?? const TextStyle(color: Colors.green),
        _nullStyle = nullStyle ?? const TextStyle(color: Colors.green),
        _stringStyle = stringStyle ?? const TextStyle(color: Colors.amber);

  /// Style of json Object keys name displaying
  TextStyle get keyStyle => defaultTextStyle.merge(_keyStyle);

  final TextStyle _keyStyle;

  /// Style of json Object [double] values displaying
  TextStyle get doubleStyle => defaultTextStyle.merge(_doubleStyle);

  final TextStyle _doubleStyle;

  /// Style of json Object [int] values displaying
  TextStyle get intStyle => defaultTextStyle.merge(_intStyle);
  final TextStyle _intStyle;

  /// Style of json Object [bool] values displaying
  TextStyle get boolStyle => defaultTextStyle.merge(_boolStyle);
  final TextStyle _boolStyle;

  /// Style of json Object [null] values displaying
  TextStyle get nullStyle => defaultTextStyle.merge(_nullStyle);
  final TextStyle _nullStyle;

  /// Style of json Object [String] values displaying
  TextStyle get stringStyle => defaultTextStyle.merge(_stringStyle);
  final TextStyle _stringStyle;

  /// This icon is shown when the object's fields are hidden
  final Widget closeIcon;

  /// This icon is shown when the object's fields are shown
  final Widget openIcon;

  /// This widget will be shown at the moment
  /// when the package cannot handle the value.
  @Deprecated('Use `errorBuilder` field.')
  final Widget errorWidget;

  /// This builder will be shown at the moment
  /// when the package cannot handle the value.
  /// Default to const Text('error') if Null.
  final ErrorBuilder? errorBuilder;

  /// Key and value separator widget
  final Widget? separator;

  /// When loading data from a file, (web in future)
  /// this widget will be shown at the time of processing
  final Widget loadingWidget;

  /// How JsonView widget will build items
  final JsonViewType viewType;

  /// Background color of JsonView
  final Color backgroundColor;

  /// This style used as default for all styles
  /// and for not parsed values
  final TextStyle defaultTextStyle;
}
