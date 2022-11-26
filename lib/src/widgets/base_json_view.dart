import 'package:flutter/material.dart';

class BaseJsonView extends StatelessWidget {
  const BaseJsonView({
    Key? key,
    this.jsonData,
  }) : super(key: key);

  final String? jsonData;

  @override
  Widget build(BuildContext context) {
    if (jsonData != null) return Text(jsonData!);
    return SizedBox();
  }
}
