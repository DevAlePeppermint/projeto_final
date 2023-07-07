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
      style: ButtonStyle(
         backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromARGB(255, 231, 231, 231);
            } else if (states.contains(MaterialState.disabled)) {
              return Colors.white54;
            }
            return const Color(0xffffffff);
          }
         )
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20,color: Color(0xff000000))
      
        ),
      )
    );
  }
}