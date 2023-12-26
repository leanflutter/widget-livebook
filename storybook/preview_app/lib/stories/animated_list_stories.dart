
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_list/animated_list.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_list_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/AnimatedList',
)
class AnimatedListMeta extends Meta with _$AnimatedListMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedListDemo();
  }
}

@storybook.Story('Default')
class AnimatedListDefaultStory extends StoryObj<AnimatedListMeta>
    with _$AnimatedListDefaultStory {}
