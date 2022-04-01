import 'dart:io';

import 'package:csv_localizations/csv_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/scientists/scientists_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isEnglishLocale = true;
  Locale? locale;

  void changeLocale() {
    isEnglishLocale = !isEnglishLocale;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    locale = Locale(Platform.localeName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: locale,
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
        CsvLocalizationsDelegate('assets/translations.csv'),
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('hi', "IN"),
        Locale('hi'),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScientistsPage(
        changeLocale: changeLocale,
      ),
    );
  }
}
