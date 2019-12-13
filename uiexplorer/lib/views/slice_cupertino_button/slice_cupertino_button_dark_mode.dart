import '../../includes.dart';

class SliceCupertinoButtonDarkMode extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoButtonDarkMode';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: Column(
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
          ),
        ),
      ),
    );
  }
}

