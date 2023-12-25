
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/sized_overflow_box/sized_overflow_box.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'sized_overflow_box_stories.g.dart';

@storybook.Meta(
  title: 'Material/SizedOverflowBox',
)
class SizedOverflowBoxMeta extends Meta with _$SizedOverflowBoxMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SizedOverflowBoxDemo();
  }
}

@storybook.Story('Default')
class SizedOverflowBoxDefaultStory extends StoryObj<SizedOverflowBoxMeta>
    with _$SizedOverflowBoxDefaultStory {}
