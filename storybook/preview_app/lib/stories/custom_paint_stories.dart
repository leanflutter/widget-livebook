
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/custom_paint/custom_paint.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'custom_paint_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/CustomPaint',
)
class CustomPaintMeta extends Meta with _$CustomPaintMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CustomPaintDemo();
  }
}

@storybook.Story('Default')
class CustomPaintDefaultStory extends StoryObj<CustomPaintMeta>
    with _$CustomPaintDefaultStory {}
