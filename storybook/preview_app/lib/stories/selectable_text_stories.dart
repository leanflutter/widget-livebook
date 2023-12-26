
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/selectable_text/selectable_text.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'selectable_text_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/SelectableText',
)
class SelectableTextMeta extends Meta with _$SelectableTextMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SelectableTextDemo();
  }
}

@storybook.Story('Default')
class SelectableTextDefaultStory extends StoryObj<SelectableTextMeta>
    with _$SelectableTextDefaultStory {}
