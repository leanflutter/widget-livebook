
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/draggable/draggable.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'draggable_stories.g.dart';

@storybook.Meta(
  title: 'Material/Draggable',
)
class DraggableMeta extends Meta with _$DraggableMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DraggableDemo();
  }
}

@storybook.Story('Default')
class DraggableDefaultStory extends StoryObj<DraggableMeta>
    with _$DraggableDefaultStory {}
