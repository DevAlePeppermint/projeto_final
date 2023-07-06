import 'package:flutter/material.dart';
import 'package:projeto_final/components/text_header.dart';
import 'package:projeto_final/pages/select_game/components/image_button.dart';
import '../../app_routes.dart';

class SelecionaJogo extends StatefulWidget {
  const SelecionaJogo({super.key});

  @override
  State<SelecionaJogo> createState() => _SelecionaJogoState();
}

class _SelecionaJogoState extends State<SelecionaJogo> {

  void navigateToGame() {
    Navigator.pushNamed(context, AppRoutes.ticketToRide);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(text: 'Jogar novamente'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageButtonGame(
                    navigateToGame:navigateToGame,
                    gameTitle: 'Ticket to Ride',
                    image: Image.asset('lib/assets/tickettoride.jpg')
                  ),
                  ImageButtonGame(
                    navigateToGame: navigateToGame,
                    gameTitle: 'CV',
                    image: Image.asset('lib/assets/cv.jpg')
                  ),
                ],
              ),
              const Divider(height: 1),
              const Header(text: 'Outros jogos'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageButtonGame(
                    navigateToGame: navigateToGame,
                    gameTitle: 'CV',
                    image: Image.asset('lib/assets/cv.jpg')
                  ),
                  ImageButtonGame(
                    navigateToGame: navigateToGame,
                    gameTitle: 'Ticket to Ride',
                    image: Image.asset('lib/assets/tickettoride.jpg')
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}