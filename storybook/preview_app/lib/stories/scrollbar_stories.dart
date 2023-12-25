
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/scrollbar/scrollbar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'scrollbar_stories.g.dart';

@storybook.Meta(
  title: 'Material/Scrollbar',
)
class ScrollbarMeta extends Meta with _$ScrollbarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ScrollbarDemo();
  }
}

@storybook.Story('Default')
class ScrollbarDefaultStory extends StoryObj<ScrollbarMeta>
    with _$ScrollbarDefaultStory {}
