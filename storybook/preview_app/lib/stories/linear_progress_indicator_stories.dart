
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/linear_progress_indicator/linear_progress_indicator.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'linear_progress_indicator_stories.g.dart';

@storybook.Meta(
  title: 'Material/LinearProgressIndicator',
)
class LinearProgressIndicatorMeta extends Meta with _$LinearProgressIndicatorMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const LinearProgressIndicatorDemo();
  }
}

@storybook.Story('Default')
class LinearProgressIndicatorDefaultStory extends StoryObj<LinearProgressIndicatorMeta>
    with _$LinearProgressIndicatorDefaultStory {}
