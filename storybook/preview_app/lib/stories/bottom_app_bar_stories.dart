
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/bottom_app_bar/bottom_app_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'bottom_app_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/BottomAppBar',
)
class BottomAppBarMeta extends Meta with _$BottomAppBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const BottomAppBarDemo();
  }
}

@storybook.Story('Default')
class BottomAppBarDefaultStory extends StoryObj<BottomAppBarMeta>
    with _$BottomAppBarDefaultStory {}
