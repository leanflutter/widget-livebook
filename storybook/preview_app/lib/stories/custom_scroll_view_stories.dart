
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/custom_scroll_view/custom_scroll_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'custom_scroll_view_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/CustomScrollView',
)
class CustomScrollViewMeta extends Meta with _$CustomScrollViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CustomScrollViewDemo();
  }
}

@storybook.Story('Default')
class CustomScrollViewDefaultStory extends StoryObj<CustomScrollViewMeta>
    with _$CustomScrollViewDefaultStory {}
