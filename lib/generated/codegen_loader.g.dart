// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "scientists": "Scientists",
  "scientistsScreenScaffoldMessage": "Let's pretend this app contains infomation related to scientists and their inventions",
  "scientistName": "Name",
  "scientistInvention": "Invention",
  "scientistCountry": "Country",
  "scientistYear": "Year"
};
static const Map<String,dynamic> hi = {
  "scientists": "वैज्ञानिक",
  "scientistsScreenScaffoldMessage": "मान लो की यह ऐप वैज्ञानिकों और उनके आविष्कारों से संबंधित जानकारी दिखाता है",
  "scientistName": "नाम",
  "scientistInvention": "आविष्कार",
  "scientistCountry": "देश",
  "scientistYear": "वर्ष"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "hi": hi};
}
