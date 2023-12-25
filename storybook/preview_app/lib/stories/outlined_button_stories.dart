
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/outlined_button/outlined_button.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'outlined_button_stories.g.dart';

@storybook.Meta(
  title: 'Material/OutlinedButton',
)
class OutlinedButtonMeta extends Meta with _$OutlinedButtonMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const OutlinedButtonDemo();
  }
}

@storybook.Story('Default')
class OutlinedButtonDefaultStory extends StoryObj<OutlinedButtonMeta>
    with _$OutlinedButtonDefaultStory {}
