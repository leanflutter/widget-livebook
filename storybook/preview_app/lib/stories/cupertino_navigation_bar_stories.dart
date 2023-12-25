
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_navigation_bar/cupertino_navigation_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_navigation_bar_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoNavigationBar',
)
class CupertinoNavigationBarMeta extends Meta with _$CupertinoNavigationBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoNavigationBarDemo();
  }
}

@storybook.Story('Default')
class CupertinoNavigationBarDefaultStory extends StoryObj<CupertinoNavigationBarMeta>
    with _$CupertinoNavigationBarDefaultStory {}
