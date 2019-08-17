import '../../includes.dart';

class SliceClipRect extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceClipRect';

  String _imageUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Align(
        alignment: Alignment.bottomCenter,
        heightFactor: 0.8,
        child: Image.network(_imageUrl),
      ),
    );
  }
}
