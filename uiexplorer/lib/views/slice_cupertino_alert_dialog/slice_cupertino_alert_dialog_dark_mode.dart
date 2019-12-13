import '../../includes.dart';

class SliceCupertinoAlertDialogDarkMode extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoAlertDialogDarkMode';

  @override
  State<StatefulWidget> createState() => _SliceCupertinoAlertDialogDarkModeState();
}

class _SliceCupertinoAlertDialogDarkModeState extends State<SliceCupertinoAlertDialogDarkMode> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoAlertDialog(
            title: Text('Allow "Maps" to access your location while you use the app?'),
            content: Text('Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text('Don\'t Allow'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text('Allow'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}
