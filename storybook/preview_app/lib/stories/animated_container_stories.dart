
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_container/animated_container.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_container_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/AnimatedContainer',
)
class AnimatedContainerMeta extends Meta with _$AnimatedContainerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedContainerDemo();
  }
}

@storybook.Story('Default')
class AnimatedContainerDefaultStory extends StoryObj<AnimatedContainerMeta>
    with _$AnimatedContainerDefaultStory {}
