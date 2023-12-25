import 'package:flutter/material.dart';

class ClipRectDemo extends StatelessWidget {
  final String _imageUrl =
      'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  const ClipRectDemo({super.key});

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
