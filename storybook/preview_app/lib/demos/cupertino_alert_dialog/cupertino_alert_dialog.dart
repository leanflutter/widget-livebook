import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

export './cupertino_alert_dialog_dark_mode.dart';

class CupertinoAlertDialogDemo extends StatefulWidget {
  const CupertinoAlertDialogDemo({super.key});

  @override
  State<CupertinoAlertDialogDemo> createState() => _CupertinoAlertDialogDemoState();
}

class _CupertinoAlertDialogDemoState extends State<CupertinoAlertDialogDemo> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1)).then((_) {
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
          title: const Text('Allow "Maps" to access your location while you use the app?'),
          content: const Text('Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('Don\'t Allow'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text('Allow'),
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
    return TextButton(
      onPressed: () {
        _handleClickMe();
      },
      child: const Text(
        'CLICK ME!',
      ),
    );
  }
}
