
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_context_menu/cupertino_context_menu.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_context_menu_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoContextMenu',
)
class CupertinoContextMenuMeta extends Meta with _$CupertinoContextMenuMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoContextMenuDemo();
  }
}

@storybook.Story('Default')
class CupertinoContextMenuDefaultStory extends StoryObj<CupertinoContextMenuMeta>
    with _$CupertinoContextMenuDefaultStory {}
