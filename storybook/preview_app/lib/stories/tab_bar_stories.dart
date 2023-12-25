
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/tab_bar/tab_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'tab_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/TabBar',
)
class TabBarMeta extends Meta with _$TabBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TabBarDemo();
  }
}

@storybook.Story('Default')
class TabBarDefaultStory extends StoryObj<TabBarMeta>
    with _$TabBarDefaultStory {}
