import 'dart:ui';

import '../../includes.dart';

class SliceBackdropFilter extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceBackdropFilter';

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Text('0' * 10000),
        Center(
          child: ClipRect(  // <-- clips to the 200x200 [Container] below
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 200.0,
                child: Text('Hello World'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

