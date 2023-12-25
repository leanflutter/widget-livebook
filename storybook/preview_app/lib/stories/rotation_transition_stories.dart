
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/rotation_transition/rotation_transition.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'rotation_transition_stories.g.dart';

@storybook.Meta(
  title: 'Material/RotationTransition',
)
class RotationTransitionMeta extends Meta with _$RotationTransitionMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RotationTransitionDemo();
  }
}

@storybook.Story('Default')
class RotationTransitionDefaultStory extends StoryObj<RotationTransitionMeta>
    with _$RotationTransitionDefaultStory {}
