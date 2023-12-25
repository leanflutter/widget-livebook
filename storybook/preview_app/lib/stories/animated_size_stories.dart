
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_size/animated_size.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_size_stories.g.dart';

@storybook.Meta(
  title: 'Material/AnimatedSize',
)
class AnimatedSizeMeta extends Meta with _$AnimatedSizeMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedSizeDemo();
  }
}

@storybook.Story('Default')
class AnimatedSizeDefaultStory extends StoryObj<AnimatedSizeMeta>
    with _$AnimatedSizeDefaultStory {}
