import 'package:flutter/material.dart';

import '../entities/ticket_to_ride_entitie.dart';

class TicketToRideProvider with ChangeNotifier {
  int _activePlayer = 0;
  List<ScorePointsEntitie> _players = [
    ScorePointsEntitie(player: 'Player 1', totalPoints: 0),
    ScorePointsEntitie(player: 'Player 2', totalPoints: 0),
    ScorePointsEntitie(player: 'Player 3', totalPoints: 0),
    ScorePointsEntitie(player: 'Player 4', totalPoints: 0),
    ScorePointsEntitie(player: 'Player 5', totalPoints: 0),
  ];
  String _namePlayer = '';

  TicketToRideProvider() {
    atualizaNamePlayer();
  }

  atualizaNamePlayer () {
    namePlayer = players[activePlayer].player;
  }

  String get namePlayer => _namePlayer;

  set namePlayer(val) {
    _namePlayer = val;
    notifyListeners();
  }

  int get activePlayer => _activePlayer;

  set activePlayer (val) {
    _activePlayer = val;
    notifyListeners();
  }

  List<ScorePointsEntitie> get players => _players;

  set players (val) {
    _players = val;
    notifyListeners();
  }

  void addPlayer () {
    activePlayer = activePlayer + 1;
    namePlayer = players[activePlayer].player;
    notifyListeners();
  }

  void countPoints(int trainsUnits, int points, String operation) {
  final Map<int, int> trainPointsMap = {
    1: 1,
    2: 2,
    3: 4,
    4: 7,
    5: 10,
    6: 15
  };

  if (operation == 'down') {
    players[activePlayer].totalPoints = players[activePlayer].totalPoints - trainPointsMap[trainsUnits]!;
    debugPrint(players[activePlayer].totalPoints.toString());
    return;
  }

  players[activePlayer].totalPoints = players[activePlayer].totalPoints + trainPointsMap[trainsUnits]!;
  debugPrint(players[activePlayer].totalPoints.toString());
}

void countGoals(int points, String radioValue ,String? goalStatus){
  if(radioValue == 'finished' && goalStatus == 'finished') {
      players[activePlayer].totalPoints = players[activePlayer].totalPoints + points;
  }
  if(radioValue == 'finished' && goalStatus == null) {
      players[activePlayer].totalPoints = players[activePlayer].totalPoints - points;
  }
  if(radioValue == 'unfinished' && goalStatus == 'unfinished') {
      players[activePlayer].totalPoints = players[activePlayer].totalPoints - points;
  }
  if(radioValue == 'unfinished' && goalStatus == null) {
      players[activePlayer].totalPoints = players[activePlayer].totalPoints + points;
  }

  debugPrint(players[activePlayer].totalPoints.toString());
}

void countLongestPathPoints (bool value) {
  value ? players[activePlayer].totalPoints = players[activePlayer].totalPoints + 10 : players[activePlayer].totalPoints = players[activePlayer].totalPoints - 10;

  debugPrint(players[activePlayer].totalPoints.toString());
}

}