import '../../includes.dart';

class SliceCupertinoActivityIndicatorDarkMode extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCupertinoActivityIndicatorDarkMode';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoActivityIndicator(radius: 32,),
        )
      ),
    );
  }
}

