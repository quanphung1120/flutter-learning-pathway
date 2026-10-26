// Module 6: DevTools Integration
// Active terminal process showing execution and active DevTools URL
// Complete Birdle widget hierarchy structure

import 'package:flutter/material.dart';
import 'module_05_layout_widgets.dart';

void main() {
  runApp(const BirdleApp());
}

class BirdleApp extends StatelessWidget {
  const BirdleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birdle',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Birdle'),
        ),
        body: const Center(
          child: GamePage(),
        ),
      ),
    );
  }
}
