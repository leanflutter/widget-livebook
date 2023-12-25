
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/sized_box/sized_box.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'sized_box_stories.g.dart';

@storybook.Meta(
  title: 'Material/SizedBox',
)
class SizedBoxMeta extends Meta with _$SizedBoxMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SizedBoxDemo();
  }
}

@storybook.Story('Default')
class SizedBoxDefaultStory extends StoryObj<SizedBoxMeta>
    with _$SizedBoxDefaultStory {}
