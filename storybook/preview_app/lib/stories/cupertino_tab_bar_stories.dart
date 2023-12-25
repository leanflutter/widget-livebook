
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_tab_bar/cupertino_tab_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_tab_bar_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoTabBar',
)
class CupertinoTabBarMeta extends Meta with _$CupertinoTabBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoTabBarDemo();
  }
}

@storybook.Story('Default')
class CupertinoTabBarDefaultStory extends StoryObj<CupertinoTabBarMeta>
    with _$CupertinoTabBarDefaultStory {}
