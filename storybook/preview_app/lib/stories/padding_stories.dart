
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/padding/padding.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'padding_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Padding',
)
class PaddingMeta extends Meta with _$PaddingMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const PaddingDemo();
  }
}

@storybook.Story('Default')
class PaddingDefaultStory extends StoryObj<PaddingMeta>
    with _$PaddingDefaultStory {}
