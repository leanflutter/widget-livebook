import '../../includes.dart';

class Preview4PageExamplePage extends StatefulWidget {
  Widget child;

  Preview4PageExamplePage({this.child});

  @override
  State<StatefulWidget> createState() => _Preview4PageExamplePageState();
}

class _Preview4PageExamplePageState extends State<Preview4PageExamplePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
    );
  }
}
