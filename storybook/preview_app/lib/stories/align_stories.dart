
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/align/align.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'align_stories.g.dart';

@storybook.Meta(
  title: 'Material/Align',
)
class AlignMeta extends Meta with _$AlignMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AlignDemo();
  }
}

@storybook.Story('Default')
class AlignDefaultStory extends StoryObj<AlignMeta>
    with _$AlignDefaultStory {}
