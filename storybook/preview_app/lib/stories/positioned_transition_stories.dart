
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/positioned_transition/positioned_transition.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'positioned_transition_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/PositionedTransition',
)
class PositionedTransitionMeta extends Meta with _$PositionedTransitionMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const PositionedTransitionDemo();
  }
}

@storybook.Story('Default')
class PositionedTransitionDefaultStory extends StoryObj<PositionedTransitionMeta>
    with _$PositionedTransitionDefaultStory {}
