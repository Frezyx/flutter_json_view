import 'package:flutter/material.dart';

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
        Text(
          '$jsonObj',
          style: textStyle,
        ),
      ],
    );
  }
}
