
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_builder/animated_builder.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_builder_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/AnimatedBuilder',
)
class AnimatedBuilderMeta extends Meta with _$AnimatedBuilderMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedBuilderDemo();
  }
}

@storybook.Story('Default')
class AnimatedBuilderDefaultStory extends StoryObj<AnimatedBuilderMeta>
    with _$AnimatedBuilderDefaultStory {}
