
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/list_tile/list_tile.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'list_tile_stories.g.dart';

@storybook.Meta(
  title: 'Material/ListTile',
)
class ListTileMeta extends Meta with _$ListTileMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ListTileDemo();
  }
}

@storybook.Story('Default')
class ListTileDefaultStory extends StoryObj<ListTileMeta>
    with _$ListTileDefaultStory {}
