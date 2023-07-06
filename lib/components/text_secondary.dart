import 'package:flutter/material.dart';

class TextSecondary extends StatelessWidget {
  final String text;

  const TextSecondary({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: const TextStyle(fontSize: 20),
    );
  }
}