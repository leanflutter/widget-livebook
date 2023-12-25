import 'package:flutter/material.dart';

class TableDemo extends StatelessWidget {
  const TableDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            Text('AAAAAA'),
            Text('B'),
            Text('C'),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text('D'),
            Text('EEE'),
            Text('F'),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text('G'),
            Text('H'),
            Text('III'),
          ],
        ),
      ],
    );
  }
}
