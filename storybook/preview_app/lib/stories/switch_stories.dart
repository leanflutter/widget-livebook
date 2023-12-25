
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/switch/switch.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'switch_stories.g.dart';

@storybook.Meta(
  title: 'Material/Switch',
)
class SwitchMeta extends Meta with _$SwitchMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SwitchDemo();
  }
}

@storybook.Story('Default')
class SwitchDefaultStory extends StoryObj<SwitchMeta>
    with _$SwitchDefaultStory {}
