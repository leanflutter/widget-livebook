import '../../includes.dart';

class SliceStepper extends StatefulWidget implements SliceExample {
  @override
  String get name => 'SliceStepper';

  @override
  _SliceStepperState createState() => _SliceStepperState();
}

class _SliceStepperState extends State<SliceStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
      onStepContinue: () {
        if (_currentStep >= 4) return;
        setState(() {
          _currentStep += 1;
        });
      },
      onStepCancel: () {
        if (_currentStep <= 0) return;
        setState(() {
          _currentStep -= 1;
        });
      },
      steps: const <Step>[
        Step(
          title: Text('Step 1'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 2'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 3'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 4'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
        Step(
          title: Text('Step 5'),
          content: SizedBox(
            width: 100.0,
            height: 100.0,
          ),
        ),
      ],
    );
  }
}
