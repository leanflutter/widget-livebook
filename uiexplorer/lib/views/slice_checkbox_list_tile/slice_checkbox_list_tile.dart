import 'package:flutter/scheduler.dart' show timeDilation;

import '../../includes.dart';

class SliceCheckboxListTile extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCheckboxListTile';

  @override
  _SliceCheckboxListTileState createState() => _SliceCheckboxListTileState();
}

class _SliceCheckboxListTileState extends State<SliceCheckboxListTile> {
  // double timeDilation = 0;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Animate Slowly'),
      value: timeDilation != 1.0,
      onChanged: (bool value) {
        setState(() { timeDilation = value ? 10.0 : 1.0; });
      },
      secondary: const Icon(Icons.hourglass_empty),
    );
  }
}
