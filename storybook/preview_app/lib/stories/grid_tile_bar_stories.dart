
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/grid_tile_bar/grid_tile_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'grid_tile_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/GridTileBar',
)
class GridTileBarMeta extends Meta with _$GridTileBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const GridTileBarDemo();
  }
}

@storybook.Story('Default')
class GridTileBarDefaultStory extends StoryObj<GridTileBarMeta>
    with _$GridTileBarDefaultStory {}
