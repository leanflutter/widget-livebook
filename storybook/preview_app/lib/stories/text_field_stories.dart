
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/text_field/text_field.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'text_field_stories.g.dart';

@storybook.Meta(
  title: 'Material/TextField',
)
class TextFieldMeta extends Meta with _$TextFieldMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TextFieldDemo();
  }
}

@storybook.Story('Default')
class TextFieldDefaultStory extends StoryObj<TextFieldMeta>
    with _$TextFieldDefaultStory {}
