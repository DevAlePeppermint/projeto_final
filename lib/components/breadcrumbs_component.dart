import 'package:flutter/material.dart';

class BreadCrumbs extends StatelessWidget {
  final int crumbsSize;
  final int activeIndex;

  const BreadCrumbs({
    super.key,
    required this.crumbsSize,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < crumbsSize; i++)
        Padding(
          padding: const EdgeInsets.only(right: 4, bottom: 8),
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i == activeIndex ? Colors.grey[700] : Colors.grey[400]
            )
          ),
        )
    ],);
  }
}