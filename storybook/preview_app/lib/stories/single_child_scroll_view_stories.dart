
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/single_child_scroll_view/single_child_scroll_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'single_child_scroll_view_stories.g.dart';

@storybook.Meta(
  title: 'Material/SingleChildScrollView',
)
class SingleChildScrollViewMeta extends Meta with _$SingleChildScrollViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SingleChildScrollViewDemo();
  }
}

@storybook.Story('Default')
class SingleChildScrollViewDefaultStory extends StoryObj<SingleChildScrollViewMeta>
    with _$SingleChildScrollViewDefaultStory {}
