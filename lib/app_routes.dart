import 'package:flutter/material.dart';
import 'package:projeto_final/pages/games/ticket_to_ride/ticket_to_ride.dart';
import 'package:projeto_final/pages/select_game/select_game.dart';
import 'pages/ranking/ranking.dart';

class AppRoutes {
  static String selecionaJogo = '/';
  static String ticketToRide = '/seleciona-jogo/ticket-to-ride';
  static String ranking = '/ranking';

  static Map<String, Widget Function(BuildContext)> routes () {
      return {
        ticketToRide: (context) => const TicketToRideScore(),
        selecionaJogo: (context) => const SelecionaJogo(),
        ranking: (context) => const Ranking(),
    };
  }
}