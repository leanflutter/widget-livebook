
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/app_bar/app_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'app_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/AppBar',
)
class AppBarMeta extends Meta with _$AppBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AppBarDemo();
  }
}

@storybook.Story('Default')
class AppBarDefaultStory extends StoryObj<AppBarMeta>
    with _$AppBarDefaultStory {}
