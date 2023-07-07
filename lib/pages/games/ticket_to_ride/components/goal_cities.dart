import 'package:flutter/material.dart';
import 'package:projeto_final/components/text_secondary.dart';
import 'package:projeto_final/providers/ticket_to_ride_provider.dart';
import 'package:provider/provider.dart';

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
  late TicketToRideProvider store;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<TicketToRideProvider>(context, listen: true);


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
            store.countGoals(widget.points, 'finished', goalStatus);
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
            store.countGoals(widget.points, 'unfinished', goalStatus);
          },
        ),
      ],
    );
  }
}