
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_opacity/animated_opacity.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_opacity_stories.g.dart';

@storybook.Meta(
  title: 'Material/AnimatedOpacity',
)
class AnimatedOpacityMeta extends Meta with _$AnimatedOpacityMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedOpacityDemo();
  }
}

@storybook.Story('Default')
class AnimatedOpacityDefaultStory extends StoryObj<AnimatedOpacityMeta>
    with _$AnimatedOpacityDefaultStory {}
