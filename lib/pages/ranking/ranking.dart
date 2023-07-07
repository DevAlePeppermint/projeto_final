import 'package:flutter/material.dart';
import 'package:projeto_final/components/button.dart';
import 'package:projeto_final/components/text_header.dart';
import 'package:projeto_final/app_routes.dart';
import 'package:projeto_final/providers/ticket_to_ride_provider.dart';
import 'package:provider/provider.dart';

class Ranking extends StatefulWidget {
  const Ranking({super.key});

  @override
  State<Ranking> createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  late TicketToRideProvider store;

  void navigateToHome() {
    Navigator.pushNamed(context, AppRoutes.selecionaJogo);
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<TicketToRideProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: const Color(0xff27233a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Header(text: 'Ranking'),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text('Jogador a'),
              // Text('Jogador b'),
              // Text('Jogador c'),
            ],
          ),
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color:Colors.indigo[50]
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
              children: [
                const Text('Pontuação', style: TextStyle(color: Color(0xff000000), fontSize: 24),),
                const SizedBox(
                  height: 24,
                ),
                for(var index = 0; index < store.players.length; index++)
                Row(
                  children: [
                    Text(store.players[index].player),
                    const Spacer(),
                    Text(store.players[index].totalPoints.toString())
                  ],
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Column(children: [
            Button(
              text: 'jogar novamente',
              onPressed: () {}
            ),
            const SizedBox(
              height: 8,
            ),
            Button(
              text: 'pagina inicial',
              onPressed: navigateToHome
            ),
            const SizedBox(
              height: 24,
            ),
          ],)
        ],
      ),
    );
  }
}