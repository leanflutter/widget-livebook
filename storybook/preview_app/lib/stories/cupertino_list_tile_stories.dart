
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_list_tile/cupertino_list_tile.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_list_tile_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoListTile',
)
class CupertinoListTileMeta extends Meta with _$CupertinoListTileMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoListTileDemo();
  }
}

@storybook.Story('Default')
class CupertinoListTileDefaultStory extends StoryObj<CupertinoListTileMeta>
    with _$CupertinoListTileDefaultStory {}
