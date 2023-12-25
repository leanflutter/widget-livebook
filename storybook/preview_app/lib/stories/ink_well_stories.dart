
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/ink_well/ink_well.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'ink_well_stories.g.dart';

@storybook.Meta(
  title: 'Material/InkWell',
)
class InkWellMeta extends Meta with _$InkWellMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const InkWellDemo();
  }
}

@storybook.Story('Default')
class InkWellDefaultStory extends StoryObj<InkWellMeta>
    with _$InkWellDefaultStory {}
