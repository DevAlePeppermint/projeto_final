import 'package:flutter/material.dart';
import 'package:projeto_final/pages/select_game/select_game.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelecionaJogo()
    );
  }
}