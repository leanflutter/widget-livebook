import '../../includes.dart';

class ReorderableListDemo extends StatefulWidget {
  const ReorderableListDemo({ Key key }) : super(key: key);

  @override
  _ListDemoState createState() => _ListDemoState();
}

class _ListItem {
  _ListItem(this.value, this.checkState);

  final String value;

  bool checkState;
}

class _ListDemoState extends State<ReorderableListDemo> {
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<_ListItem> _items = <String>[
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
  ].map<_ListItem>((String item) => _ListItem(item, false)).toList();


  Widget buildListTile(_ListItem item) {
    const Widget secondary = Text(
      'Even more additional list item information appears on line three.',
    );
    return CheckboxListTile(
      key: Key(item.value),
      isThreeLine: true,
      value: item.checkState ?? false,
      onChanged: (bool newValue) {
        setState(() {
          item.checkState = newValue;
        });
      },
      title: Text('This item represents ${item.value}.'),
      subtitle: secondary,
      secondary: const Icon(Icons.drag_handle),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final _ListItem item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Scrollbar(
        child: ReorderableListView(
          onReorder: _onReorder,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          children: _items.map<Widget>(buildListTile).toList(),
        ),
      ),
    );
  }
}
