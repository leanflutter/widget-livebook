
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/elevated_button/elevated_button.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'elevated_button_stories.g.dart';

@storybook.Meta(
  title: 'Material/ElevatedButton',
)
class ElevatedButtonMeta extends Meta with _$ElevatedButtonMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ElevatedButtonDemo();
  }
}

@storybook.Story('Default')
class ElevatedButtonDefaultStory extends StoryObj<ElevatedButtonMeta>
    with _$ElevatedButtonDefaultStory {}
