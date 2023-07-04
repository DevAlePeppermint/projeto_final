import 'package:flutter/material.dart';
import 'package:projeto_final/components/text_header.dart';
import 'package:projeto_final/pages/select_game/components/image_button.dart';

class SelecionaJogo extends StatelessWidget {
  const SelecionaJogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 60, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(text: 'Jogar novamente'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageButtonGame(
                    gameTitle: 'Ticket to Ride',
                    image: Image.asset('lib/assets/tickettoride.jpg')
                  ),
                  ImageButtonGame(
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
                    gameTitle: 'CV',
                    image: Image.asset('lib/assets/cv.jpg')
                  ),
                  ImageButtonGame(
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