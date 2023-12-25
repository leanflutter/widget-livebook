
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/drawer/drawer.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'drawer_stories.g.dart';

@storybook.Meta(
  title: 'Material/Drawer',
)
class DrawerMeta extends Meta with _$DrawerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DrawerDemo();
  }
}

@storybook.Story('Default')
class DrawerDefaultStory extends StoryObj<DrawerMeta>
    with _$DrawerDefaultStory {}
