import 'package:flutter/material.dart';
import 'package:projeto_final/components/button.dart';

class TicketToRideScore extends StatefulWidget {
  const TicketToRideScore({super.key});

  @override
  State<TicketToRideScore> createState() => _TicketToRideScoreState();
}

class _TicketToRideScoreState extends State<TicketToRideScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back)),
              Text('Voltar'),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.check)),
              Text('Concluir'),
                ],
              )
            ],
          ),
          SizedBox(
            height: 400,
            width: 300,
            child: Container(
              color: Colors.red,
              child: Text('slider'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Button(text: 'adicionar jogador', onPressed: () {},),
          ),          
        ],
      )
    );
  }
}