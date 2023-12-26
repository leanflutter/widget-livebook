
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/dismissible/dismissible.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'dismissible_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Dismissible',
)
class DismissibleMeta extends Meta with _$DismissibleMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DismissibleDemo();
  }
}

@storybook.Story('Default')
class DismissibleDefaultStory extends StoryObj<DismissibleMeta>
    with _$DismissibleDefaultStory {}
