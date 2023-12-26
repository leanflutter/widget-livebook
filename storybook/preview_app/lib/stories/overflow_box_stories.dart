
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/overflow_box/overflow_box.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'overflow_box_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/OverflowBox',
)
class OverflowBoxMeta extends Meta with _$OverflowBoxMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const OverflowBoxDemo();
  }
}

@storybook.Story('Default')
class OverflowBoxDefaultStory extends StoryObj<OverflowBoxMeta>
    with _$OverflowBoxDefaultStory {}
