
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/toggle_buttons/toggle_buttons.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'toggle_buttons_stories.g.dart';

@storybook.Meta(
  title: 'Material/ToggleButtons',
)
class ToggleButtonsMeta extends Meta with _$ToggleButtonsMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ToggleButtonsDemo();
  }
}

@storybook.Story('Default')
class ToggleButtonsDefaultStory extends StoryObj<ToggleButtonsMeta>
    with _$ToggleButtonsDefaultStory {}
