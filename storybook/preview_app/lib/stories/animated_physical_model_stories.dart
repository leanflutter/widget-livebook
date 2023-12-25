
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/animated_physical_model/animated_physical_model.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'animated_physical_model_stories.g.dart';

@storybook.Meta(
  title: 'Material/AnimatedPhysicalModel',
)
class AnimatedPhysicalModelMeta extends Meta with _$AnimatedPhysicalModelMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AnimatedPhysicalModelDemo();
  }
}

@storybook.Story('Default')
class AnimatedPhysicalModelDefaultStory extends StoryObj<AnimatedPhysicalModelMeta>
    with _$AnimatedPhysicalModelDefaultStory {}
