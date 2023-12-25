
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/stepper/stepper.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'stepper_stories.g.dart';

@storybook.Meta(
  title: 'Material/Stepper',
)
class StepperMeta extends Meta with _$StepperMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const StepperDemo();
  }
}

@storybook.Story('Default')
class StepperDefaultStory extends StoryObj<StepperMeta>
    with _$StepperDefaultStory {}
