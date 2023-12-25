
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/floating_action_button/floating_action_button.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'floating_action_button_stories.g.dart';

@storybook.Meta(
  title: 'Material/FloatingActionButton',
)
class FloatingActionButtonMeta extends Meta with _$FloatingActionButtonMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const FloatingActionButtonDemo();
  }
}

@storybook.Story('Default')
class FloatingActionButtonDefaultStory extends StoryObj<FloatingActionButtonMeta>
    with _$FloatingActionButtonDefaultStory {}
