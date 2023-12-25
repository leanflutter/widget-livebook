import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  final String _imageUrl =
      'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(_imageUrl);
  }
}
