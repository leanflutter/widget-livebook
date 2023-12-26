
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_positioned/animated_positioned.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_positioned_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/AnimatedPositioned',
)
class AnimatedPositionedMeta extends Meta with _$AnimatedPositionedMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedPositionedDemo();
  }
}

@storybook.Story('Default')
class AnimatedPositionedDefaultStory extends StoryObj<AnimatedPositionedMeta>
    with _$AnimatedPositionedDefaultStory {}
