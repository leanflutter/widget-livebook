import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1)).then((_) {
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
          title: const Text('Rewind and remember'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You will never be satisfied.'),
                Text('You’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Regret'),
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
        _neverSatisfied();
      },
      child: const Text(
        "CLICK ME!",
      ),
    );
  }
}
