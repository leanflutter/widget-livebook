
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/physical_model/physical_model.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'physical_model_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/PhysicalModel',
)
class PhysicalModelMeta extends Meta with _$PhysicalModelMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const PhysicalModelDemo();
  }
}

@storybook.Story('Default')
class PhysicalModelDefaultStory extends StoryObj<PhysicalModelMeta>
    with _$PhysicalModelDefaultStory {}
