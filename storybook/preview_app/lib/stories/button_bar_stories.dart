
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/button_bar/button_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'button_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/ButtonBar',
)
class ButtonBarMeta extends Meta with _$ButtonBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ButtonBarDemo();
  }
}

@storybook.Story('Default')
class ButtonBarDefaultStory extends StoryObj<ButtonBarMeta>
    with _$ButtonBarDefaultStory {}
