
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/checkbox/checkbox.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'checkbox_stories.g.dart';

@storybook.Meta(
  title: 'Material/Checkbox',
)
class CheckboxMeta extends Meta with _$CheckboxMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CheckboxDemo();
  }
}

@storybook.Story('Default')
class CheckboxDefaultStory extends StoryObj<CheckboxMeta>
    with _$CheckboxDefaultStory {}
