import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final dynamic onPressed;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20)
      
        ),
      )
    );
  }
}