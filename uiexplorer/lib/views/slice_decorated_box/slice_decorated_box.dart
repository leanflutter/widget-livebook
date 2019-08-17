import '../../includes.dart';

class SliceDecoratedBox extends StatefulWidget
    implements SliceExample {
  @override
  String get name => 'SliceDecoratedBox';

  @override
  _SliceDecoratedBoxState createState() =>
      _SliceDecoratedBoxState();
}

class _SliceDecoratedBoxState extends State<SliceDecoratedBox> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          color: const Color(0xFF000000),
          style: BorderStyle.solid,
          width: 4.0,
        ),
        borderRadius: BorderRadius.zero,
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color(0x66000000),
            blurRadius: 10.0,
            spreadRadius: 4.0,
          )
        ],
      ),
      child: Container(
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(20),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
