
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_switcher/animated_switcher.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_switcher_stories.g.dart';

@storybook.Meta(
  title: 'Material/AnimatedSwitcher',
)
class AnimatedSwitcherMeta extends Meta with _$AnimatedSwitcherMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedSwitcherDemo();
  }
}

@storybook.Story('Default')
class AnimatedSwitcherDefaultStory extends StoryObj<AnimatedSwitcherMeta>
    with _$AnimatedSwitcherDefaultStory {}
