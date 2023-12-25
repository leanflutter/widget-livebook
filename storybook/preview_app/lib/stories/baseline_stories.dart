
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/baseline/baseline.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'baseline_stories.g.dart';

@storybook.Meta(
  title: 'Material/Baseline',
)
class BaselineMeta extends Meta with _$BaselineMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const BaselineDemo();
  }
}

@storybook.Story('Default')
class BaselineDefaultStory extends StoryObj<BaselineMeta>
    with _$BaselineDefaultStory {}
