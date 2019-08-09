import '../../includes.dart';

class SliceCupertinoButton extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoButton';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CupertinoButton(
          child: Text('Button'),
          onPressed: () { /** */ },
        ),
        CupertinoButton.filled(
          child: Text('Button'),
          onPressed: () { /** */ },
        ),
      ],
    );
  }
}

