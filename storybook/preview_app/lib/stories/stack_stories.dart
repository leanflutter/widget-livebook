
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/stack/stack.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'stack_stories.g.dart';

@storybook.Meta(
  title: 'Material/Stack',
)
class StackMeta extends Meta with _$StackMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const StackDemo();
  }
}

@storybook.Story('Default')
class StackDefaultStory extends StoryObj<StackMeta>
    with _$StackDefaultStory {}
