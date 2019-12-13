import '../../includes.dart';

export './slice_cupertino_alert_dialog_dark_mode.dart';

class SliceCupertinoAlertDialog extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoAlertDialog';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoAlertDialogState();
}

class _SliceCupertinoAlertDialogState extends State<SliceCupertinoAlertDialog> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _handleClickMe();
    });
    super.initState();
  }

  Future<void> _handleClickMe() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Allow "Maps" to access your location while you use the app?'),
          content: Text('Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Don\'t Allow'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text('Allow'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
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
