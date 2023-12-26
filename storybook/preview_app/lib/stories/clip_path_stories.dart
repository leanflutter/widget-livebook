
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/clip_path/clip_path.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'clip_path_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/ClipPath',
)
class ClipPathMeta extends Meta with _$ClipPathMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ClipPathDemo();
  }
}

@storybook.Story('Default')
class ClipPathDefaultStory extends StoryObj<ClipPathMeta>
    with _$ClipPathDefaultStory {}
