import 'package:flutter/material.dart';
import 'package:flutter_i18n/scientists/scientists_page.dart';
import 'package:easy_localization/easy_localization.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppLocalization(),
    );
  }
}

class AppLocalization extends StatefulWidget {
  const AppLocalization({Key? key}) : super(key: key);

  @override
  _AppLocalizationState createState() => _AppLocalizationState();
}

class _AppLocalizationState extends State<AppLocalization> {
  bool isLocalChangedLocally = false;

  void changeLocale() {
    isLocalChangedLocally = true;
    var locale = context.locale;
    final isEnglishLocale = (locale == const Locale('en', ''));
    if (isEnglishLocale) {
      context.setLocale(const Locale('hi', ''));
    } else {
      context.setLocale(const Locale('en', ''));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (!isLocalChangedLocally) {
      context.setLocale(Localizations.localeOf(context));
    }

    return ScientistsPage(
      changeLocale: changeLocale,
    );
  }
}
