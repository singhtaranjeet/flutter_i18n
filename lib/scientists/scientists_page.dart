import 'package:flutter/material.dart';
import 'package:flutter_i18n/model/scientist.dart';
import 'package:flutter_i18n/widgets.dart/scientist_card.dart';
import 'package:easy_localization/easy_localization.dart';

class ScientistsPage extends StatelessWidget {
  const ScientistsPage({required this.changeLocale, Key? key})
      : super(key: key);
  final VoidCallback changeLocale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scientists".tr()),
        actions: [
          IconButton(
              icon: const Icon(Icons.change_circle_outlined),
              onPressed: changeLocale),
          IconButton(
            icon: const Icon(Icons.info_outline_rounded),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      const Icon(
                        Icons.insert_emoticon_rounded,
                        color: Colors.purple,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "scientistsScreenScaffoldMessage".tr(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
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
