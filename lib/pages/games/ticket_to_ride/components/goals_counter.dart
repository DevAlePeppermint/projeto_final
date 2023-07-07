import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:projeto_final/pages/games/ticket_to_ride/components/goal_selecter.dart';
import 'package:projeto_final/providers/ticket_to_ride_provider.dart';
import '../../../../components/text_secondary.dart';
import '../../../../services/games/ticket_to_ride.dart';

class GoalsCounter extends StatefulWidget {
  const GoalsCounter({super.key});

  @override
  State<GoalsCounter> createState() => _GoalsCounterState();
}

class _GoalsCounterState extends State<GoalsCounter> {
  late TicketToRideProvider store;
  bool isLongestTrainPath = false;

  Color getColor (states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.focused,
    };

    if (states.any(interactiveStates.contains)) {
      return Colors.transparent;
    }
    return Colors.white;    
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<TicketToRideProvider>(context, listen: true);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextSecondary(text: store.namePlayer),
            Column(
              children: [
                const GoalSelecter(),
                const Divider(),
                Row(  
                  children: [
                    Checkbox(
                      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        getColor
                      ),
                      checkColor: Colors.green,
                      value: isLongestTrainPath,
                      onChanged: (bool? value) {
                        setState(() {
                          isLongestTrainPath = value!;
                        });
                        store.countLongestPathPoints(value!);
                      }
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: TextSecondary(text: 'Maior caminho da partida')
                    )
                    
                  ],
                )
              ],
            )
          ],
        ),
      ),  
    );
  }
}