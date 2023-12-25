
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/text/text.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'text_stories.g.dart';

@storybook.Meta(
  title: 'Material/Text',
)
class TextMeta extends Meta with _$TextMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TextDemo();
  }
}

@storybook.Story('Default')
class TextDefaultStory extends StoryObj<TextMeta>
    with _$TextDefaultStory {}
