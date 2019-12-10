import '../../includes.dart';

class SliceSliverAppBar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceSliverAppBar';

  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar Sample'),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () {/* ... */},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(height: 1200.0, color: Colors.teal),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
