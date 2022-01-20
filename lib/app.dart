import 'package:flutter/material.dart';
import 'package:flutter_i18n/scientists/scientists_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isEnglishLocale = true;

  void changeLocale() {
    isEnglishLocale = !isEnglishLocale;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScientistsPage(
        changeLocale: changeLocale,
      ),
    );
  }
}
