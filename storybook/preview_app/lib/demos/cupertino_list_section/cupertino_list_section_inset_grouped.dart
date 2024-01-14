import 'package:flutter/cupertino.dart';

class CupertinoListSectionInsetGroupedDemo extends StatefulWidget {
  const CupertinoListSectionInsetGroupedDemo({super.key});

  @override
  State<CupertinoListSectionInsetGroupedDemo> createState() =>
      _CupertinoListSectionInsetGroupedDemoState();
}

class _CupertinoListSectionInsetGroupedDemoState
    extends State<CupertinoListSectionInsetGroupedDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoListSection.insetGrouped(
        header: const Text('My Reminders'),
        children: <CupertinoListTile>[
          CupertinoListTile.notched(
            title: const Text('Open pull request'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.activeGreen,
            ),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'Open pull request');
                },
              ),
            ),
          ),
          CupertinoListTile.notched(
            title: const Text('Push to master'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.systemRed,
            ),
            additionalInfo: const Text('Not available'),
          ),
          CupertinoListTile.notched(
            title: const Text('View last commit'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.activeOrange,
            ),
            additionalInfo: const Text('12 days ago'),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'Last commit');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
