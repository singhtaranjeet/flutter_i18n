import 'package:flutter/material.dart';
import 'package:flutter_i18n/model/scientist.dart';
import 'package:flutter_i18n/widgets.dart/scientist_card.dart';

class ScientistsPage extends StatefulWidget {
  const ScientistsPage({Key? key}) : super(key: key);

  @override
  State<ScientistsPage> createState() => _ScientistsPageState();
}

class _ScientistsPageState extends State<ScientistsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scientists"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) {
            return ScientistCard(
              scientist: Scientist.empty(),
            );
          },
        ),
      ),
    );
  }
}
