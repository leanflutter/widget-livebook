
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/flexible/flexible.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'flexible_stories.g.dart';

@storybook.Meta(
  title: 'Material/Flexible',
)
class FlexibleMeta extends Meta with _$FlexibleMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const FlexibleDemo();
  }
}

@storybook.Story('Default')
class FlexibleDefaultStory extends StoryObj<FlexibleMeta>
    with _$FlexibleDefaultStory {}
