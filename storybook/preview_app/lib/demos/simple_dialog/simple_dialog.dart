import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  const SimpleDialogDemo({super.key});

  @override
  State<SimpleDialogDemo> createState() => _SimpleDialogDemoState();
}

enum Department {
  treasury,
  state,
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1)).then((_) {
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
                onPressed: () {
                  Navigator.pop(context, Department.treasury);
                },
                child: const Text('Treasury department'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('State department'),
              ),
            ],
          );
        },)) {
      case Department.treasury:
        // Let's go.
        // ...
        break;
      case Department.state:
        // ...
        break;
      case null:
        // ...
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _askedToLead();
      },
      child: const Text(
        'CLICK ME!',
      ),
    );
  }
}
