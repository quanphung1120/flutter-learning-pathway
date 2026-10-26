// Module 4: Widget Fundamentals
// Implementation of Tile class using Container and BoxDecoration

import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile(this.letter, {super.key});

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
