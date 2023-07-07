import 'package:flutter/material.dart';
import 'package:projeto_final/app_routes.dart';
import 'package:projeto_final/components/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

void navigateToSelection () {
  Navigator.pushNamed(context, AppRoutes.selecionaJogo);
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff27233a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('CONTAPONTO', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
          Image.asset('lib/assets/logo.png'),
          Button(text: 'começar  >', onPressed: navigateToSelection)
        ],
      )
    );
  }
}