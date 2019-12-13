import '../../includes.dart';

export './slice_cupertino_button_dark_mode.dart';

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

