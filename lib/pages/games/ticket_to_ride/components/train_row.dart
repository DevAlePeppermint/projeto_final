import 'package:flutter/material.dart';
import 'package:projeto_final/services/games/ticket_to_ride.dart';
import '../../../../components/text_secondary.dart';

class TrainRow extends StatefulWidget {
  final int trainsUnits;

  const TrainRow({
    super.key,
    required this.trainsUnits,
  });

  @override
  State<TrainRow> createState() => _TrainRowState();
}

class _TrainRowState extends State<TrainRow> {
  int points = 0;

  void onClickPlus () {
    setState(() {
      points = points + 1;
    });
    countPoints(widget.trainsUnits, points, 'plus');
  }

  void onClickDown () {
    if (points == 0) return;
    setState(() {
      points = points - 1;
    });
    countPoints(widget.trainsUnits, points, 'down');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        children: [
          for (var i = 0; i < widget.trainsUnits; i++)
            SizedBox(
              height: 37,
              width: 37,
              child: Image.asset('lib/assets/trem-de-brinquedo.png')
            ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              focusColor: Colors.pink.withOpacity(0.3),
              onPressed: onClickDown,
              icon: const Icon(Icons.remove,  color: Colors.red)
            )
          ),
          TextSecondary(text: points.toString()),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              onPressed: onClickPlus, 
              icon: const Icon(Icons.add, color: Colors.blue)
            )
          )
        ],
      ),
    );
  }
}