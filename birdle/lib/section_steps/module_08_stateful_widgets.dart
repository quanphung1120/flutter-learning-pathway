// Module 8: Stateful Widgets
// Implementation of StatefulWidget and associated setState logic

import 'package:flutter/material.dart';
import '../game.dart';
import 'module_07_user_input.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final Game _game = Game();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // Render guess tiles with colored feedback
          for (final guess in _game.guesses)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (final letter in guess)
                  Container(
                    margin: const EdgeInsets.all(2.5),
                    width: 50,
                    height: 50,
                    color: letter.type == HitType.hit
                        ? Colors.green
                        : letter.type == HitType.miss
                            ? Colors.yellow
                            : Colors.grey,
                    child: Center(child: Text(letter.char)),
                  ),
              ],
            ),
          // User input triggers setState to update game board
          GuessInput(
            onSubmitGuess: (guess) {
              setState(() {
                _game.guess(guess);
              });
            },
          ),
        ],
      ),
    );
  }
}
