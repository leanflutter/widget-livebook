
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/text_button/text_button.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'text_button_stories.g.dart';

@storybook.Meta(
  title: 'Material/TextButton',
)
class TextButtonMeta extends Meta with _$TextButtonMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TextButtonDemo();
  }
}

@storybook.Story('Default')
class TextButtonDefaultStory extends StoryObj<TextButtonMeta>
    with _$TextButtonDefaultStory {}
