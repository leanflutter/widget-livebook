
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/checkbox_list_tile/checkbox_list_tile.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'checkbox_list_tile_stories.g.dart';

@storybook.Meta(
  title: 'Material/CheckboxListTile',
)
class CheckboxListTileMeta extends Meta with _$CheckboxListTileMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CheckboxListTileDemo();
  }
}

@storybook.Story('Default')
class CheckboxListTileDefaultStory extends StoryObj<CheckboxListTileMeta>
    with _$CheckboxListTileDefaultStory {}
