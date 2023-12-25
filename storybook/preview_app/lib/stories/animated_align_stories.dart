
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_align/animated_align.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_align_stories.g.dart';

@storybook.Meta(
  title: 'Material/AnimatedAlign',
)
class AnimatedAlignMeta extends Meta with _$AnimatedAlignMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedAlignDemo();
  }
}

@storybook.Story('Default')
class AnimatedAlignDefaultStory extends StoryObj<AnimatedAlignMeta>
    with _$AnimatedAlignDefaultStory {}
