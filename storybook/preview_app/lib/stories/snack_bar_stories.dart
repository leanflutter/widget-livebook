
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/snack_bar/snack_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'snack_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/SnackBar',
)
class SnackBarMeta extends Meta with _$SnackBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SnackBarDemo();
  }
}

@storybook.Story('Default')
class SnackBarDefaultStory extends StoryObj<SnackBarMeta>
    with _$SnackBarDefaultStory {}
