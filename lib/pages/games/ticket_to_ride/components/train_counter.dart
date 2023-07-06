import 'package:flutter/material.dart';
import 'package:projeto_final/pages/games/ticket_to_ride/components/train_row.dart';
import '../../../../components/text_secondary.dart';

class TrainCounter extends StatefulWidget {
  const TrainCounter({super.key});

  @override
  State<TrainCounter> createState() => _TrainCounterState();
}

class _TrainCounterState extends State<TrainCounter> {
  void countPoint (int points, String operation) {
    debugPrint(points.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TextSecondary(text: 'Player 1'),
          Column(
            children: [
              TrainRow(
                trainsUnits: 1,
                onPlus: () => countPoint(1, 'plus'),
                onDown: () => countPoint(1, 'down')
              ),
              TrainRow(
                trainsUnits: 2,
                onPlus: () => countPoint(2, 'plus'),
                onDown: () => countPoint(2, 'down')
              ),
              TrainRow(
                trainsUnits: 3,
                onPlus: () => countPoint(3, 'plus'),
                onDown: () => countPoint(3, 'down')
              ),
              TrainRow(
                trainsUnits: 4,
                onPlus: () => countPoint(4, 'plus'),
                onDown: () => countPoint(4, 'down')
              ),
              TrainRow(
                trainsUnits: 5,
                onPlus: () => countPoint(5, 'plus'),
                onDown: () => countPoint(5, 'down')
              ),
              TrainRow(
                trainsUnits: 6,
                onPlus: () => countPoint(6, 'plus'),
                onDown: () => countPoint(6, 'down')
              ),
            ],
          )
        ],
      ),
    );  
  }
}