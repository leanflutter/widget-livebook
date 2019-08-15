import '../../includes.dart';

class SliceConstrainedBox extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceConstrainedBox';

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: const Card(child: Text('Hello World!')),
    );
  }
}
