
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/clip_rect/clip_rect.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'clip_rect_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/ClipRect',
)
class ClipRectMeta extends Meta with _$ClipRectMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ClipRectDemo();
  }
}

@storybook.Story('Default')
class ClipRectDefaultStory extends StoryObj<ClipRectMeta>
    with _$ClipRectDefaultStory {}
