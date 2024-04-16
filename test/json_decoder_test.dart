import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_json_view/src/utils/utils.dart';

void main() {
  group(
    'JsonConvertor can covert',
    () {
      canConvertTest(
        1,
        '["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]',
      );
      canConvertTest(
        2,
        '[{"name":"Ram", "email":"Ram@gmail.com"}, {"name":"Bob", "email":"bob32@gmail.com"}]',
      );
      canConvertTest(
        3,
        '{"value": "New", "onclick": "CreateDoc()"}',
      );
      canConvertTest(
        4,
        '{"name":"Shyam"}',
      );
      canConvertTest(
        5,
        '{"name":"Shyam"},',
        valid: false,
      );
    },
  );

  group(
    'JsonConvertor covert map',
    () {
      convertMapTest(
        1,
        '{"name":"Shyam"}',
      );
      convertMapTest(
        2,
        '["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]',
        valid: false,
      );
    },
  );

  group(
    'JsonConvertor covert list',
    () {
      convertListTest(
        1,
        '[{"name":"Ram", "email":"Ram@gmail.com"}, {"name":"Bob", "email":"bob32@gmail.com"}]',
      );
      convertListTest(
        2,
        '{"name":"Shyam"}',
        valid: false,
      );
    },
  );
}

void canConvertTest(int index, String jsonString, {bool valid = true}) {
  test(
    'Test canConverToObject #$index',
    () {
      final canConvert = JsonConverter.canConverToObject(jsonString);
      expect(canConvert, valid);
    },
  );
}

void convertMapTest(int index, String jsonString, {bool valid = true}) {
  test(
    'Test jsonStringToObject Map #$index',
    () {
      final isMap = JsonConverter.jsonStringToObject(
              jsonString, const Text("Failed to process string"))
          is Map<String, dynamic>;
      expect(isMap, valid);
    },
  );
}

void convertListTest(int index, String jsonString, {bool valid = true}) {
  test(
    'Test jsonStringToObject List #$index',
    () {
      final isMap = JsonConverter.jsonStringToObject(
          jsonString, const Text("Failed to process List")) is List;
      expect(isMap, valid);
    },
  );
}
