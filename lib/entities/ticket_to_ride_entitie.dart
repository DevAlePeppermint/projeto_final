class GoalsCardEntitie {
  late String city;
  late int points;

  GoalsCardEntitie({
    required this.city, 
    required this.points
  });
}

class ScorePointsEntitie {
  late String player;
  late int totalPoints;

  ScorePointsEntitie({
    required this.player,
    required this.totalPoints
  });
}