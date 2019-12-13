import '../../includes.dart';

class SliceCupertinoActionSheetDarkMode extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoActionSheetDarkMode';

  @override
  _SliceCupertinoActionSheetDarkModeState createState() => _SliceCupertinoActionSheetDarkModeState();
}

class _SliceCupertinoActionSheetDarkModeState extends State<SliceCupertinoActionSheetDarkMode> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoActionSheet(
            title: Text('Favorite Dessert'),
            message: Text('Please select the best dessert from the options below.'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Profiteroles'),
                onPressed: () { /** */ },
              ),
              CupertinoActionSheetAction(
                child: Text('Cannolis'),
                onPressed: () { /** */ },
              ),
              CupertinoActionSheetAction(
                child: Text('Trifie'),
                onPressed: () { /** */ },
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              child: Text('Cancel'),
              onPressed: () { /** */ },
            ),
          ),
        ),
      )
    );
  }
}

