
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/radio_list_tile/radio_list_tile.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'radio_list_tile_stories.g.dart';

@storybook.Meta(
  title: 'Material/RadioListTile',
)
class RadioListTileMeta extends Meta with _$RadioListTileMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RadioListTileDemo();
  }
}

@storybook.Story('Default')
class RadioListTileDefaultStory extends StoryObj<RadioListTileMeta>
    with _$RadioListTileDefaultStory {}
