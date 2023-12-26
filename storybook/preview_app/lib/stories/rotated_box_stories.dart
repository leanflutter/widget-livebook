
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/rotated_box/rotated_box.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'rotated_box_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/RotatedBox',
)
class RotatedBoxMeta extends Meta with _$RotatedBoxMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RotatedBoxDemo();
  }
}

@storybook.Story('Default')
class RotatedBoxDefaultStory extends StoryObj<RotatedBoxMeta>
    with _$RotatedBoxDefaultStory {}
