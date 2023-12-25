
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/scaffold/scaffold.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'scaffold_stories.g.dart';

@storybook.Meta(
  title: 'Material/Scaffold',
)
class ScaffoldMeta extends Meta with _$ScaffoldMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ScaffoldDemo();
  }
}

@storybook.Story('Default')
class ScaffoldDefaultStory extends StoryObj<ScaffoldMeta>
    with _$ScaffoldDefaultStory {}
