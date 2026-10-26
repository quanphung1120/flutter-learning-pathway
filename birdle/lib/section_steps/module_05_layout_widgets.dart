// Module 5: Screen Layout Widgets
// Implementation of GamePage layout using Column and Row widgets

import 'package:flutter/material.dart';
import 'module_04_widget_fundamentals.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          for (var r = 0; r < 5; r++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var c = 0; c < 5; c++)
                  const Padding(
                    padding: EdgeInsets.all(2.5),
                    child: Tile(''),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
