import '../../includes.dart';

class SliceCenter extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceCenter';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.blue[50],
      child: Center(
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}

