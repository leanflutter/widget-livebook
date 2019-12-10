import '../../includes.dart';

class SliceSizedBox extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceSizedBox';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 300.0,
      child: const Card(child: Text('Hello World!')),
    );
  }
}
