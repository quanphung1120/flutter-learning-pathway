// Module 10: State Management Project Setup
// Terminal: flutter create wikipedia_reader --empty
// Terminal: flutter pub add http material_ui
// Initial summary.dart and main.dart skeleton

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wikipedia Flutter'),
        ),
        body: const Center(
          child: Text('Loading...'),
        ),
      ),
    );
  }
}
