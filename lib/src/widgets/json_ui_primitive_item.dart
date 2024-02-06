import 'package:flutter/material.dart';

import '../../flutter_json_view.dart';

class PrimitiveJsonItem extends StatelessWidget {
  const PrimitiveJsonItem({
    Key? key,
    required this.jsonObj,
    required this.textStyle,
  }) : super(key: key);

  final dynamic jsonObj;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JsonView.primitiveJsonItemBuilder?.call(context, jsonObj, textStyle) ??
            Text(
              '$jsonObj',
              style: textStyle,
            ),
      ],
    );
  }
}
