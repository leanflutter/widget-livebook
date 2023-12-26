import 'package:flutter/cupertino.dart';

export './cupertino_action_sheet_dark_mode.dart';

class CupertinoActionSheetDemo extends StatefulWidget {
  const CupertinoActionSheetDemo({super.key});

  @override
  State<CupertinoActionSheetDemo> createState() =>
      _CupertinoActionSheetDemoState();
}

class _CupertinoActionSheetDemoState extends State<CupertinoActionSheetDemo> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1)).then((_) {
      _handleClickMe();
    });
    super.initState();
  }

  Future<void> _handleClickMe() async {
    return showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Favorite Dessert'),
          message:
              const Text('Please select the best dessert from the options below.'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: const Text('Profiteroles'),
              onPressed: () {/** */},
            ),
            CupertinoActionSheetAction(
              child: const Text('Cannolis'),
              onPressed: () {/** */},
            ),
            CupertinoActionSheetAction(
              child: const Text('Trifie'),
              onPressed: () {/** */},
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            child: const Text('Cancel'),
            onPressed: () {/** */},
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        _handleClickMe();
      },
      child: const Text("CLICK ME!"),
    );
  }
}
