
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/placeholder/placeholder.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'placeholder_stories.g.dart';

@storybook.Meta(
  title: 'Material/Placeholder',
)
class PlaceholderMeta extends Meta with _$PlaceholderMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const PlaceholderDemo();
  }
}

@storybook.Story('Default')
class PlaceholderDefaultStory extends StoryObj<PlaceholderMeta>
    with _$PlaceholderDefaultStory {}
