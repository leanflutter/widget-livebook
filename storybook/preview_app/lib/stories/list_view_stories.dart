
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/list_view/list_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'list_view_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/ListView',
)
class ListViewMeta extends Meta with _$ListViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ListViewDemo();
  }
}

@storybook.Story('Default')
class ListViewDefaultStory extends StoryObj<ListViewMeta>
    with _$ListViewDefaultStory {}
