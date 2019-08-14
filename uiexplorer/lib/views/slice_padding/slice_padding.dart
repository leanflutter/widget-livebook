import '../../includes.dart';

class SlicePadding extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SlicePadding';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: const Card(child: Text('Hello World!')),
    );
  }
}

