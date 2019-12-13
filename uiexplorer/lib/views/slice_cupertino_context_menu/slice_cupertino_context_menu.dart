import '../../includes.dart';

class SliceCupertinoContextMenu extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoContextMenu';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoContextMenu(
        child: Container(
          width: 100,
          height: 60,
          color: Colors.red,
        ),
        actions: <Widget>[
          CupertinoContextMenuAction(
            child: const Text('Action one'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoContextMenuAction(
            child: const Text('Action two'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

