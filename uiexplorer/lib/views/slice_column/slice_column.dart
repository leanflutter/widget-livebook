import '../../includes.dart';

class SliceColumn extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceColumn';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Deliver features faster'),
        Text('Craft beautiful UIs'),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}
