import 'package:flutter/material.dart';

class ImageButtonGame extends StatelessWidget {
  final String gameTitle;
  final Widget image;

  const ImageButtonGame({
    super.key,
    required this.gameTitle,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}