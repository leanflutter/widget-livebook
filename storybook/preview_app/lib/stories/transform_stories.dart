
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/transform/transform.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'transform_stories.g.dart';

@storybook.Meta(
  title: 'Material/Transform',
)
class TransformMeta extends Meta with _$TransformMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TransformDemo();
  }
}

@storybook.Story('Default')
class TransformDefaultStory extends StoryObj<TransformMeta>
    with _$TransformDefaultStory {}
