
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/grid_tile/grid_tile.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'grid_tile_stories.g.dart';

@storybook.Meta(
  title: 'Material/GridTile',
)
class GridTileMeta extends Meta with _$GridTileMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const GridTileDemo();
  }
}

@storybook.Story('Default')
class GridTileDefaultStory extends StoryObj<GridTileMeta>
    with _$GridTileDefaultStory {}
