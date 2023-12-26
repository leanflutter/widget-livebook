
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/nested_scroll_view/nested_scroll_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'nested_scroll_view_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/NestedScrollView',
)
class NestedScrollViewMeta extends Meta with _$NestedScrollViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const NestedScrollViewDemo();
  }
}

@storybook.Story('Default')
class NestedScrollViewDefaultStory extends StoryObj<NestedScrollViewMeta>
    with _$NestedScrollViewDefaultStory {}
