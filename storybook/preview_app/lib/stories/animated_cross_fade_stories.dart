
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_cross_fade/animated_cross_fade.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_cross_fade_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/AnimatedCrossFade',
)
class AnimatedCrossFadeMeta extends Meta with _$AnimatedCrossFadeMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedCrossFadeDemo();
  }
}

@storybook.Story('Default')
class AnimatedCrossFadeDefaultStory extends StoryObj<AnimatedCrossFadeMeta>
    with _$AnimatedCrossFadeDefaultStory {}
