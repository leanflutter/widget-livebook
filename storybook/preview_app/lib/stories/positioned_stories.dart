
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/positioned/positioned.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'positioned_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Positioned',
)
class PositionedMeta extends Meta with _$PositionedMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const PositionedDemo();
  }
}

@storybook.Story('Default')
class PositionedDefaultStory extends StoryObj<PositionedMeta>
    with _$PositionedDefaultStory {}
