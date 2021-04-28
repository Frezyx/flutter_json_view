import 'package:flutter/material.dart';

class ClosedJsonObjectItem extends StatelessWidget {
  const ClosedJsonObjectItem({
    Key? key,
    this.keyName,
    required this.isList,
    this.type,
    this.count,
  })  : assert(keyName != null || (type != null && count != null)),
        super(key: key);

  final bool isList;
  final String? keyName;
  final String? type;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (keyName != null) Text(keyName ?? ''),
        if (keyName != null) Text(':'),
        if (isList) Text('Array<$type>[${count ?? 0}]'),
        if (!isList) Text('Object'),
      ],
    );
  }
}
