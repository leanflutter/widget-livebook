import '../../includes.dart';

class SliceAlertDialog extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceAlertDialog';

  @override
  _SliceAlertDialogState createState() => _SliceAlertDialogState();
}

class _SliceAlertDialogState extends State<SliceAlertDialog> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _neverSatisfied();
    });
    super.initState();
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Rewind and remember'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You will never be satisfied.'),
                Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
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
        _neverSatisfied();
      },
      child: Text(
        "CLICK ME!",
      ),
    );
  }
}

