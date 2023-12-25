
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/text_form_field/text_form_field.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'text_form_field_stories.g.dart';

@storybook.Meta(
  title: 'Material/TextFormField',
)
class TextFormFieldMeta extends Meta with _$TextFormFieldMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TextFormFieldDemo();
  }
}

@storybook.Story('Default')
class TextFormFieldDefaultStory extends StoryObj<TextFormFieldMeta>
    with _$TextFormFieldDefaultStory {}
