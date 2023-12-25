
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_padding/animated_padding.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_padding_stories.g.dart';

@storybook.Meta(
  title: 'Material/AnimatedPadding',
)
class AnimatedPaddingMeta extends Meta with _$AnimatedPaddingMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedPaddingDemo();
  }
}

@storybook.Story('Default')
class AnimatedPaddingDefaultStory extends StoryObj<AnimatedPaddingMeta>
    with _$AnimatedPaddingDefaultStory {}
