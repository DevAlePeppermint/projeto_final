import 'package:flutter/material.dart';
import 'package:projeto_final/pages/games/ticket_to_ride/components/goal_cities.dart';

import '../../../../services/games/ticket_to_ride.dart';

class GoalSelecter extends StatefulWidget {
  const GoalSelecter({super.key});

  @override
  State<GoalSelecter> createState() => _GoalSelecterState();
}

class _GoalSelecterState extends State<GoalSelecter> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        shrinkWrap: true,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.check, color: Colors.green,),
              SizedBox(width: 8,),
              Icon(Icons.close, color: Colors.red),
              SizedBox(width: 4,),
            ],
          ),
          for(var index = 0; index < cityPoints.length; index++)
            GoalCities(cityName: cityPoints[index].city),
        ],
      ),
    )
 ;
  }
}