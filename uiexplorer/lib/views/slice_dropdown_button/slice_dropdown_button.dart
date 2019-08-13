import '../../includes.dart';

class SliceDropdownButton extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceDropdownButton';

  @override
  _SliceDropdownButtonState createState() => _SliceDropdownButtonState();
}

class _SliceDropdownButtonState extends State<SliceDropdownButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
