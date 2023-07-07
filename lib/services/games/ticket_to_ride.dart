import 'package:flutter/material.dart';
import 'package:projeto_final/providers/ticket_to_ride_provider.dart';
import '../../entities/ticket_to_ride_entitie.dart';


List<ScorePointsEntitie> players = [
  ScorePointsEntitie(player: 'Player 1', totalPoints: 0),
  ScorePointsEntitie(player: 'Player 2', totalPoints: 0),
  ScorePointsEntitie(player: 'Player 3', totalPoints: 0),
  ScorePointsEntitie(player: 'Player 4', totalPoints: 0),
  ScorePointsEntitie(player: 'Player 5', totalPoints: 0),
];
  
  final List<GoalsCardEntitie> cityPoints = [
    GoalsCardEntitie(city: 'Vancouver - Montreal', points: 20),
    GoalsCardEntitie(city: 'New York - Atlanta', points: 6),
    GoalsCardEntitie(city: 'Los Angeles - New York', points: 21),
    GoalsCardEntitie(city: 'Los Angeles - Chicago',points:  16),
    GoalsCardEntitie(city: 'Chicago - Santa Fé', points: 9),
    GoalsCardEntitie(city: 'Kansas City - Houston', points: 5),
    GoalsCardEntitie(city: 'Duluth - Houston', points: 8),
    GoalsCardEntitie(city: 'Duluth - El Passo', points: 10),
    GoalsCardEntitie(city: 'Denver - Pittsburgh', points: 11),
    GoalsCardEntitie(city: 'Seatle - New York', points: 22),
    GoalsCardEntitie(city: 'Los Angeles - Miami', points: 20),
    GoalsCardEntitie(city: 'Calgary - Phoenix', points: 13),
    GoalsCardEntitie(city: 'Vancouver - Santa Fé', points: 13),
    GoalsCardEntitie(city: 'San Francisco - Atlanta', points: 17),
    GoalsCardEntitie(city: 'Sault Ste. Marie - Nashville', points: 8),
    GoalsCardEntitie(city: 'Sault Ste. Marie - Oklahoma City', points: 9),
    GoalsCardEntitie(city: 'Dallas - New York', points: 11),
    GoalsCardEntitie(city: 'Montréal - Atlanta', points: 9),
    GoalsCardEntitie(city: 'Toronto - Miami', points: 10),
    GoalsCardEntitie(city: 'Chicago - New Orleans', points: 7),
    GoalsCardEntitie(city: 'Portland - Phoenix', points: 11),
    GoalsCardEntitie(city: 'Helena - Los Angeles', points: 8),
    GoalsCardEntitie(city: 'Seattle - Los Angeles', points: 9),
    GoalsCardEntitie(city: 'Denver - El Passo', points: 4),
    GoalsCardEntitie(city: 'Winipec - Little Rock', points: 11),
    GoalsCardEntitie(city: 'Winnipec - Houston', points: 12),
    GoalsCardEntitie(city: 'Calgary - Salt Lake City', points: 7),
    GoalsCardEntitie(city: 'Montréal - New Orleans', points: 13),
    GoalsCardEntitie(city: 'Boston - Miami', points: 12),
    GoalsCardEntitie(city: 'Portland - Nashvile', points: 17),
  ];
