import 'package:flutter/services.dart';
import 'package:flutter_json_view/src/utils/converter.dart';

abstract class AssetLoader {
  static Future<String> _loadAssets(String path) async {
    return rootBundle.loadString(path);
  }

  static Future<dynamic> getAssetJson(String filePath, onError) async {
    final jsonString = await _loadAssets(filePath);
    return JsonConverter.jsonStringToObject(jsonString, onError);
  }
}
