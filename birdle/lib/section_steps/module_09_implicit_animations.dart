// Module 9: Implicit Animations
// AnimatedContainer configuration within Tile specifying duration and transition curve

import 'package:flutter/material.dart';
import '../game.dart';

class Tile extends StatelessWidget {
  const Tile(this.letter, this.hitType, {super.key});

  final String letter;
  final HitType hitType;

  Color _getBackgroundColor() {
    switch (hitType) {
      case HitType.hit:
        return Colors.green;
      case HitType.partial:
        return Colors.yellow;
      case HitType.miss:
        return Colors.grey.shade600;
      case HitType.none:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: _getBackgroundColor(),
        border: Border.all(
          color: Colors.grey.shade400,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          letter,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: hitType == HitType.none ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
