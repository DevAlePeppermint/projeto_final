import '../../../../providers/ticket_to_ride_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final/pages/games/ticket_to_ride/components/train_row.dart';
import '../../../../components/text_secondary.dart';

class TrainCounter extends StatefulWidget {
  const TrainCounter({super.key});

  @override
  State<TrainCounter> createState() => _TrainCounterState();
}

class _TrainCounterState extends State<TrainCounter> {
  late TicketToRideProvider store;

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async {
      
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<TicketToRideProvider>(context, listen: true);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextSecondary(text: store.namePlayer),
          const Column(
            children: [
              TrainRow(
                trainsUnits: 1,
              ),
              TrainRow(
                trainsUnits: 2,

              ),
              TrainRow(
                trainsUnits: 3,

              ),
              TrainRow(
                trainsUnits: 4,

              ),
              TrainRow(
                trainsUnits: 5,

              ),
              TrainRow(
                trainsUnits: 6,

              ),
            ],
          )
        ],
      ),
    );  
  }
}