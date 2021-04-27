import 'package:flutter/material.dart';

class PrimitiveJsonItem extends StatelessWidget {
  const PrimitiveJsonItem({
    Key? key,
    required this.jsonObj,
  }) : super(key: key);

  final dynamic jsonObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$jsonObj'),
        // const SizedBox(width: 10),
        // Text('${jsonObj.runtimeType}'),
      ],
    );
  }
}
