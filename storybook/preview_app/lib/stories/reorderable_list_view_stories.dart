
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/reorderable_list_view/reorderable_list_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'reorderable_list_view_stories.g.dart';

@storybook.Meta(
  title: 'Material/ReorderableListView',
)
class ReorderableListViewMeta extends Meta with _$ReorderableListViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ReorderableListViewDemo();
  }
}

@storybook.Story('Default')
class ReorderableListViewDefaultStory extends StoryObj<ReorderableListViewMeta>
    with _$ReorderableListViewDefaultStory {}
