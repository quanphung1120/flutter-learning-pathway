// Evidence entry point for Module 4: renders the Tile widget from the
// module_04 step file (Container + BoxDecoration).
import 'package:flutter/material.dart';

import '../section_steps/module_04_widget_fundamentals.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Tile('B'),
              SizedBox(width: 8),
              Tile('I'),
              SizedBox(width: 8),
              Tile('R'),
              SizedBox(width: 8),
              Tile('D'),
              SizedBox(width: 8),
              Tile('L'),
              SizedBox(width: 8),
              Tile('E'),
            ],
          ),
        ),
      ),
    ),
  );
}
