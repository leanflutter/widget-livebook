
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/aspect_ratio/aspect_ratio.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'aspect_ratio_stories.g.dart';

@storybook.Meta(
  title: 'Material/AspectRatio',
)
class AspectRatioMeta extends Meta with _$AspectRatioMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AspectRatioDemo();
  }
}

@storybook.Story('Default')
class AspectRatioDefaultStory extends StoryObj<AspectRatioMeta>
    with _$AspectRatioDefaultStory {}
