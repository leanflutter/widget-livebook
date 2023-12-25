
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/gesture_detector/gesture_detector.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'gesture_detector_stories.g.dart';

@storybook.Meta(
  title: 'Material/GestureDetector',
)
class GestureDetectorMeta extends Meta with _$GestureDetectorMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const GestureDetectorDemo();
  }
}

@storybook.Story('Default')
class GestureDetectorDefaultStory extends StoryObj<GestureDetectorMeta>
    with _$GestureDetectorDefaultStory {}
