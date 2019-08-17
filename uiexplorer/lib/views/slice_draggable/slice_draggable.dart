import '../../includes.dart';

class SliceDraggable extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceDraggable';

  @override
  _SliceDraggableState createState() => _SliceDraggableState();
}

class _SliceDraggableState extends State<SliceDraggable> {
  final List<int> accepted = <int>[];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Draggable<int>(
          data: 1,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.blue[50],
            child: const Text('Source'),
          ),
          feedback: const Text('Dragging'),
        ),
        DragTarget<int>(
          builder: (BuildContext context, List<int> data, List<dynamic> rejects) {
            return Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.blue[50],
              height: 100.0,
              child: Column(
                children: <Widget>[
                  for (var item in accepted)
                    Text(item.toString())
                ],
              )
            );
          },
          onAccept: accepted.add,
        ),
      ],
    );
  }
}
