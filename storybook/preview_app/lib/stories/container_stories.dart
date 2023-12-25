
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/container/container.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'container_stories.g.dart';

@storybook.Meta(
  title: 'Material/Container',
)
class ContainerMeta extends Meta with _$ContainerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ContainerDemo();
  }
}

@storybook.Story('Default')
class ContainerDefaultStory extends StoryObj<ContainerMeta>
    with _$ContainerDefaultStory {}
