import '../../includes.dart';

class SliceScrollbar extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceScrollbar';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar Sample'),
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
