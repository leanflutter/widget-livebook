import '../../includes.dart';

class SliceClipOval extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceClipOval';

  String _imageUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: 120,
        height: 100,
        child: Image.network(_imageUrl, fit: BoxFit.cover,),
      ),
    );
  }
}
