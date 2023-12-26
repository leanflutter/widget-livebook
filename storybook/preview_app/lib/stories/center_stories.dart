
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/center/center.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'center_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Center',
)
class CenterMeta extends Meta with _$CenterMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CenterDemo();
  }
}

@storybook.Story('Default')
class CenterDefaultStory extends StoryObj<CenterMeta>
    with _$CenterDefaultStory {}
