
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'bottom_navigation_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/BottomNavigationBar',
)
class BottomNavigationBarMeta extends Meta with _$BottomNavigationBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const BottomNavigationBarDemo();
  }
}

@storybook.Story('Default')
class BottomNavigationBarDefaultStory extends StoryObj<BottomNavigationBarMeta>
    with _$BottomNavigationBarDefaultStory {}
