
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_switch/cupertino_switch.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_switch_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoSwitch',
)
class CupertinoSwitchMeta extends Meta with _$CupertinoSwitchMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoSwitchDemo();
  }
}

@storybook.Story('Default')
class CupertinoSwitchDefaultStory extends StoryObj<CupertinoSwitchMeta>
    with _$CupertinoSwitchDefaultStory {}
