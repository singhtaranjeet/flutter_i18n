import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/generated/locale_keys.g.dart';
import 'package:flutter_i18n/model/scientist.dart';

class ScientistCard extends StatelessWidget {
  final Scientist scientist;
  const ScientistCard({required this.scientist, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1760),
            lastDate: DateTime(2030));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            const CircleAvatar(),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.scientistName.tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(LocaleKeys.scientistInvention.tr())
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  LocaleKeys.scientistCountry.tr(),
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  LocaleKeys.scientistYear.tr(),
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
