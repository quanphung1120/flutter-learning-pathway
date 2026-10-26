// Module 17: Stack-Based Navigation
// Navigator.of(context).push with CupertinoPageRoute and _buildLargeScreenLayout implementation

import 'package:flutter/cupertino.dart';

class GroupListView extends StatelessWidget {
  const GroupListView({super.key, required this.groups});

  final List<String> groups;

  void _navigateToGroup(BuildContext context, String group) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) => CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            previousPageTitle: 'Lists',
            middle: Text(group),
          ),
          child: Center(child: Text('Contacts in $group')),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      header: const Text('iPhone'),
      children: groups.map((group) {
        return CupertinoListTile(
          title: Text(group),
          trailing: const CupertinoListTileChevron(),
          onTap: () => _navigateToGroup(context, group),
        );
      }).toList(),
    );
  }
}
