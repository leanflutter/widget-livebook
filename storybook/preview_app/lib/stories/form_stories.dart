
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/form/form.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'form_stories.g.dart';

@storybook.Meta(
  title: 'Material/Form',
)
class FormMeta extends Meta with _$FormMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const FormDemo();
  }
}

@storybook.Story('Default')
class FormDefaultStory extends StoryObj<FormMeta>
    with _$FormDefaultStory {}
