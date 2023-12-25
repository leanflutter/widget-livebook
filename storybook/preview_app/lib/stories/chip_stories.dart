
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/chip/chip.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'chip_stories.g.dart';

@storybook.Meta(
  title: 'Material/Chip',
)
class ChipMeta extends Meta with _$ChipMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ChipDemo();
  }
}

@storybook.Story('Default')
class ChipDefaultStory extends StoryObj<ChipMeta>
    with _$ChipDefaultStory {}
