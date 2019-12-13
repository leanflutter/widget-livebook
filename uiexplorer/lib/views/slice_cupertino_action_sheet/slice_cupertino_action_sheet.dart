import '../../includes.dart';

export './slice_cupertino_action_sheet_dark_mode.dart';

class SliceCupertinoActionSheet extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoActionSheet';

  @override
  _SliceCupertinoActionSheetState createState() => _SliceCupertinoActionSheetState();
}

class _SliceCupertinoActionSheetState extends State<SliceCupertinoActionSheet> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _handleClickMe();
    });
    super.initState();
  }

  Future<void> _handleClickMe() async {
    return showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('Favorite Dessert'),
          message: Text('Please select the best dessert from the options below.'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('Profiteroles'),
              onPressed: () { /** */ },
            ),
            CupertinoActionSheetAction(
              child: Text('Cannolis'),
              onPressed: () { /** */ },
            ),
            CupertinoActionSheetAction(
              child: Text('Trifie'),
              onPressed: () { /** */ },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            child: Text('Cancel'),
            onPressed: () { /** */ },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _handleClickMe();
      },
      child: Text(
        "CLICK ME!",
      ),
    );
  }
}

