
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/grid_view/grid_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'grid_view_stories.g.dart';

@storybook.Meta(
  title: 'Material/GridView',
)
class GridViewMeta extends Meta with _$GridViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const GridViewDemo();
  }
}

@storybook.Story('Default')
class GridViewDefaultStory extends StoryObj<GridViewMeta>
    with _$GridViewDefaultStory {}
