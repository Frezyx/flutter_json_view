import 'package:flutter_test/flutter_test.dart';

import 'package:json_view/src/utils/utils.dart';

void main() {
  group(
    'JsonConvertor',
    () {
      convertorTest(
        1,
        '["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]',
      );
      convertorTest(
        2,
        '[{"name":"Ram", "email":"Ram@gmail.com"}, {"name":"Bob", "email":"bob32@gmail.com"}]',
      );
      convertorTest(
        3,
        '{"value": "New", "onclick": "CreateDoc()"}',
      );
      convertorTest(
        4,
        '{"name":"Shyam"}',
      );
      convertorTest(
        5,
        '{"name":"Shyam"},',
        valid: false,
      );
    },
  );
}

void convertorTest(int index, String jsonString, {bool valid = true}) {
  test(
    'Test json convertor can convert method #$index',
    () {
      final canConvert = JsonConverter.canConverToObject(jsonString);
      expect(canConvert, valid);
    },
  );
}
