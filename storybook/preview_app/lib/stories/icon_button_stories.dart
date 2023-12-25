
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/icon_button/icon_button.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'icon_button_stories.g.dart';

@storybook.Meta(
  title: 'Material/IconButton',
)
class IconButtonMeta extends Meta with _$IconButtonMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const IconButtonDemo();
  }
}

@storybook.Story('Default')
class IconButtonDefaultStory extends StoryObj<IconButtonMeta>
    with _$IconButtonDefaultStory {}
