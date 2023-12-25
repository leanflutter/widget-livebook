
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/vertical_divider/vertical_divider.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'vertical_divider_stories.g.dart';

@storybook.Meta(
  title: 'Material/VerticalDivider',
)
class VerticalDividerMeta extends Meta with _$VerticalDividerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const VerticalDividerDemo();
  }
}

@storybook.Story('Default')
class VerticalDividerDefaultStory extends StoryObj<VerticalDividerMeta>
    with _$VerticalDividerDefaultStory {}
