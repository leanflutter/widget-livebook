import 'package:flutter/cupertino.dart';

export './cupertino_button_dark_mode.dart';

class CupertinoButtonDemo extends StatelessWidget {
  const CupertinoButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CupertinoButton(
          child: const Text('Button'),
          onPressed: () { /** */ },
        ),
        CupertinoButton.filled(
          child: const Text('Button'),
          onPressed: () { /** */ },
        ),
      ],
    );
  }
}

