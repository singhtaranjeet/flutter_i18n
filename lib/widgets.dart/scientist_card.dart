import 'package:flutter/material.dart';
import 'package:flutter_i18n/model/scientist.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                    AppLocalizations.of(context)!.scientistName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(AppLocalizations.of(context)!.scientistInvention)
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  AppLocalizations.of(context)!.scientistCountry,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  AppLocalizations.of(context)!.scientistYear,
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
