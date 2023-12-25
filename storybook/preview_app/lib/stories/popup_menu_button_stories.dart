
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/popup_menu_button/popup_menu_button.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'popup_menu_button_stories.g.dart';

@storybook.Meta(
  title: 'Material/PopupMenuButton',
)
class PopupMenuButtonMeta extends Meta with _$PopupMenuButtonMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const PopupMenuButtonDemo();
  }
}

@storybook.Story('Default')
class PopupMenuButtonDefaultStory extends StoryObj<PopupMenuButtonMeta>
    with _$PopupMenuButtonDefaultStory {}
