import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  const TooltipDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Tooltip(
          message: 'High quality',
          child: IconButton(
            icon: Icon(Icons.high_quality),
            onPressed: () {
              /** */
            },
          ),
        ),
        Tooltip(
          message: 'Full screen',
          child: IconButton(
            icon: Icon(Icons.fullscreen),
            onPressed: () {
              /** */
            },
          ),
        ),
        Tooltip(
          message: 'Filter',
          child: IconButton(
            icon: Icon(Icons.filter),
            onPressed: () {
              /** */
            },
          ),
        )
      ],
    );
  }
}
