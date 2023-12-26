
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/default_text_style/default_text_style.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'default_text_style_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/DefaultTextStyle',
)
class DefaultTextStyleMeta extends Meta with _$DefaultTextStyleMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DefaultTextStyleDemo();
  }
}

@storybook.Story('Default')
class DefaultTextStyleDefaultStory extends StoryObj<DefaultTextStyleMeta>
    with _$DefaultTextStyleDefaultStory {}
