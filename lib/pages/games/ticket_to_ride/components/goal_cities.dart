import 'package:flutter/material.dart';
import 'package:projeto_final/components/text_secondary.dart';

class GoalCities extends StatefulWidget {
  final cityName;

  const GoalCities({
    super.key,
    required this.cityName,
  });

  @override
  State<GoalCities> createState() => _GoalCitiesState();
}

class _GoalCitiesState extends State<GoalCities> {
  String? goalStatus = 'not taken';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextSecondary(text: widget.cityName),
        const Spacer(),
        Radio(
          value: 'finished',
          toggleable: true,
          groupValue: goalStatus,
          onChanged: (selectedValue) {
            setState(() {
              goalStatus = selectedValue;
            });
          },
        ),
        Radio(
          value: 'unfinished',
          toggleable: true,
          groupValue: goalStatus,
          onChanged: (selectedValue) {
            setState(() {
              goalStatus = selectedValue;
            });
          },
        ),
      ],
    );
  }
}