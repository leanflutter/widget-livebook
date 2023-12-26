
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/rich_text/rich_text.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'rich_text_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/RichText',
)
class RichTextMeta extends Meta with _$RichTextMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RichTextDemo();
  }
}

@storybook.Story('Default')
class RichTextDefaultStory extends StoryObj<RichTextMeta>
    with _$RichTextDefaultStory {}
