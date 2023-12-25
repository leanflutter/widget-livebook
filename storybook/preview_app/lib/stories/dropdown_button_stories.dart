
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/dropdown_button/dropdown_button.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'dropdown_button_stories.g.dart';

@storybook.Meta(
  title: 'Material/DropdownButton',
)
class DropdownButtonMeta extends Meta with _$DropdownButtonMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DropdownButtonDemo();
  }
}

@storybook.Story('Default')
class DropdownButtonDefaultStory extends StoryObj<DropdownButtonMeta>
    with _$DropdownButtonDefaultStory {}
