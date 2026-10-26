// Module 16: Scrolling and Slivers
// CustomScrollView implementation with CupertinoSliverNavigationBar.search and SliverList.list

import 'package:flutter/cupertino.dart';

class ContactListView extends StatelessWidget {
  const ContactListView({super.key, required this.contacts});

  final List<String> contacts;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: const Text('All iPhone'),
          alwaysShowMiddle: false,
        ),
        SliverList.list(
          children: contacts.map((contact) {
            return CupertinoListTile(
              title: Text(contact),
            );
          }).toList(),
        ),
      ],
    );
  }
}
