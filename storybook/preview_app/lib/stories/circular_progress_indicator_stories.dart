
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/circular_progress_indicator/circular_progress_indicator.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'circular_progress_indicator_stories.g.dart';

@storybook.Meta(
  title: 'Material/CircularProgressIndicator',
)
class CircularProgressIndicatorMeta extends Meta with _$CircularProgressIndicatorMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CircularProgressIndicatorDemo();
  }
}

@storybook.Story('Default')
class CircularProgressIndicatorDefaultStory extends StoryObj<CircularProgressIndicatorMeta>
    with _$CircularProgressIndicatorDefaultStory {}
