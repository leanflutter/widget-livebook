
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/constrained_box/constrained_box.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'constrained_box_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/ConstrainedBox',
)
class ConstrainedBoxMeta extends Meta with _$ConstrainedBoxMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ConstrainedBoxDemo();
  }
}

@storybook.Story('Default')
class ConstrainedBoxDefaultStory extends StoryObj<ConstrainedBoxMeta>
    with _$ConstrainedBoxDefaultStory {}
