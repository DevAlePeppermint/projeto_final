import 'package:flutter/material.dart';

class ImageButtonGame extends StatelessWidget {
  final String gameTitle;
  final Widget image;
  final Function() navigateToGame;

  const ImageButtonGame({
    super.key,
    required this.gameTitle,
    required this.image,
    required this.navigateToGame,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateToGame,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: image,
            ),
            Text(gameTitle)
          ],
        ),
      ),
    );
  }
}