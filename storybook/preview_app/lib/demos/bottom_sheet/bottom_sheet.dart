import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('SHOW BOTTOM SHEET'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  'This is the modal bottom sheet. Slide down to dismiss.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 24.0,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
