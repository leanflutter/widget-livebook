
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/clip_oval/clip_oval.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'clip_oval_stories.g.dart';

@storybook.Meta(
  title: 'Material/ClipOval',
)
class ClipOvalMeta extends Meta with _$ClipOvalMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ClipOvalDemo();
  }
}

@storybook.Story('Default')
class ClipOvalDefaultStory extends StoryObj<ClipOvalMeta>
    with _$ClipOvalDefaultStory {}
