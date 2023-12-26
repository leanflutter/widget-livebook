
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/expanded/expanded.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'expanded_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Expanded',
)
class ExpandedMeta extends Meta with _$ExpandedMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ExpandedDemo();
  }
}

@storybook.Story('Default')
class ExpandedDefaultStory extends StoryObj<ExpandedMeta>
    with _$ExpandedDefaultStory {}
