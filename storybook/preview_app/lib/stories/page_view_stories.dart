
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/page_view/page_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'page_view_stories.g.dart';

@storybook.Meta(
  title: 'Material/PageView',
)
class PageViewMeta extends Meta with _$PageViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const PageViewDemo();
  }
}

@storybook.Story('Default')
class PageViewDefaultStory extends StoryObj<PageViewMeta>
    with _$PageViewDefaultStory {}
