
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_default_text_style/animated_default_text_style.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_default_text_style_stories.g.dart';

@storybook.Meta(
  title: 'Material/AnimatedDefaultTextStyle',
)
class AnimatedDefaultTextStyleMeta extends Meta with _$AnimatedDefaultTextStyleMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedDefaultTextStyleDemo();
  }
}

@storybook.Story('Default')
class AnimatedDefaultTextStyleDefaultStory extends StoryObj<AnimatedDefaultTextStyleMeta>
    with _$AnimatedDefaultTextStyleDefaultStory {}
