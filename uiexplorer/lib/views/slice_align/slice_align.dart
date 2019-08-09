import '../../includes.dart';

class SliceAlign extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceAlign';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.blue[50],
      child: Align(
        alignment: Alignment.topRight,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}

