import 'package:flutter/material.dart';
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
                  children: const [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text("Invention")
                  ],
                ),
              ),
              Column(
                children: const [
                  Text(
                    "Country",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Year",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
