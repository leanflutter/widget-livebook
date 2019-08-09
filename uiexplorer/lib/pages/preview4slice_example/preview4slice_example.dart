import '../../includes.dart';

class Preview4SliceExamplePage extends StatefulWidget {
  Widget child;

  Preview4SliceExamplePage(this.child);

  @override
  State<StatefulWidget> createState() => _Preview4SliceExamplePageState();
}

class _Preview4SliceExamplePageState extends State<Preview4SliceExamplePage> {
  Widget _buildBody(BuildContext context) {
    return widget.child;
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        // height: double.infinity,
        alignment: Alignment.center,
        width: 375,
          child: _buildBody(context),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return _build(context);
  }
}
