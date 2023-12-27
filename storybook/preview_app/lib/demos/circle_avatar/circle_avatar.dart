import 'package:flutter/material.dart';

const String _userAvatarUrl =
    'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

class CircleAvatarDemo extends StatelessWidget {
  const CircleAvatarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: NetworkImage(_userAvatarUrl),
    );
  }
}
