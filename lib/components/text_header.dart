import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;

  const Header({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: const TextStyle(fontSize: 24),
    );
  }
}