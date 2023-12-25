
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/icon/icon.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'icon_stories.g.dart';

@storybook.Meta(
  title: 'Material/Icon',
)
class IconMeta extends Meta with _$IconMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const IconDemo();
  }
}

@storybook.Story('Default')
class IconDefaultStory extends StoryObj<IconMeta>
    with _$IconDefaultStory {}
