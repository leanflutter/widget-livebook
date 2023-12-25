
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/indexed_stack/indexed_stack.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'indexed_stack_stories.g.dart';

@storybook.Meta(
  title: 'Material/IndexedStack',
)
class IndexedStackMeta extends Meta with _$IndexedStackMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const IndexedStackDemo();
  }
}

@storybook.Story('Default')
class IndexedStackDefaultStory extends StoryObj<IndexedStackMeta>
    with _$IndexedStackDefaultStory {}
