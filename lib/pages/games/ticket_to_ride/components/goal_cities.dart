import 'package:flutter/material.dart';
import 'package:projeto_final/components/text_secondary.dart';

import '../../../../services/games/ticket_to_ride.dart';

class GoalCities extends StatefulWidget {
  final cityName;
  final points;

  const GoalCities({
    super.key,
    required this.cityName,
    required this.points,
  });

  @override
  State<GoalCities> createState() => _GoalCitiesState();
}

class _GoalCitiesState extends State<GoalCities> {
  String? goalStatus;

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
            countGoals(widget.points, 'finished', goalStatus);
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
            countGoals(widget.points, 'unfinished', goalStatus);
          },
        ),
      ],
    );
  }
}