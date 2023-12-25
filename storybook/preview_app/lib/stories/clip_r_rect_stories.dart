
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/clip_r_rect/clip_r_rect.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'clip_r_rect_stories.g.dart';

@storybook.Meta(
  title: 'Material/ClipRRect',
)
class ClipRRectMeta extends Meta with _$ClipRRectMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ClipRRectDemo();
  }
}

@storybook.Story('Default')
class ClipRRectDefaultStory extends StoryObj<ClipRRectMeta>
    with _$ClipRRectDefaultStory {}
