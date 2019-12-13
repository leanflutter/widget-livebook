import '../../includes.dart';

class Preview4SliceExamplePage extends StatefulWidget {
  final dynamic example;

  Preview4SliceExamplePage(this.example);

  @override
  State<StatefulWidget> createState() => _Preview4SliceExamplePageState();
}

class _Preview4SliceExamplePageState extends State<Preview4SliceExamplePage> {
  Widget _buildBody(BuildContext context) {
    return widget.example;
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: _buildBody(context),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return _build(context);
    // return WillPopScope(
    //   onWillPop: () async => false,
    //   child: _build(context),
    // );
  }
}
