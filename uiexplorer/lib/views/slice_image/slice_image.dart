import '../../includes.dart';

class SliceImage extends StatelessWidget implements SliceExample {
  @override
  String get name => 'SliceImage';

  String _imageUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  @override
  Widget build(BuildContext context) {
    return Image.asset(_imageUrl);
  }
}
