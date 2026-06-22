import 'package:flutter/services.dart';

class HtmlEditorUtils {
  static Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}