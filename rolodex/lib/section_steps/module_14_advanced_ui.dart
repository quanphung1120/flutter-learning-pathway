// Module 14: Advanced UI Setup
// main.dart with CupertinoApp, CupertinoThemeData, and ContactGroupsModel using ValueNotifier

import 'package:flutter/cupertino.dart';

class ContactGroupsModel extends ValueNotifier<List<String>> {
  ContactGroupsModel() : super(['All iPhone', 'Friends', 'Work']);
}

final contactGroupsModel = ContactGroupsModel();

void main() {
  runApp(const RolodexApp());
}

class RolodexApp extends StatelessWidget {
  const RolodexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Rolodex'),
        ),
        child: Center(
          child: Text('Hello Rolodex!'),
        ),
      ),
    );
  }
}
