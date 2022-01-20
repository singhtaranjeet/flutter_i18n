import 'package:flutter/material.dart';
import 'package:flutter_i18n/app.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: "assets/translations",
      supportedLocales: const [
        Locale('hi', ''),
        Locale('en', ''),
      ],
      saveLocale: false,
      fallbackLocale: const Locale('en', ''),
      child: const MyApp()));
}
