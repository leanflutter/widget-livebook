import '../../includes.dart';

class SliceSimpleDialog extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceSimpleDialog';

  @override
  _SliceSimpleDialogState createState() => _SliceSimpleDialogState();
}

enum Department {
  treasury,
  state,
}

class _SliceSimpleDialogState extends State<SliceSimpleDialog> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1)).then((_) {
      _askedToLead();
    });
    super.initState();
  }

  Future<void> _askedToLead() async {
    switch (await showDialog<Department>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select assignment'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () { Navigator.pop(context, Department.treasury); },
              child: const Text('Treasury department'),
            ),
            SimpleDialogOption(
              onPressed: () { Navigator.pop(context, Department.state); },
              child: const Text('State department'),
            ),
          ],
        );
      }
    )) {
      case Department.treasury:
        // Let's go.
        // ...
      break;
      case Department.state:
        // ...
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _askedToLead();
      },
      child: Text(
        "CLICK ME!",
      ),
    );
  }
}

