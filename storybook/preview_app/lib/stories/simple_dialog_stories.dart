
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/simple_dialog/simple_dialog.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'simple_dialog_stories.g.dart';

@storybook.Meta(
  title: 'Material/SimpleDialog',
)
class SimpleDialogMeta extends Meta with _$SimpleDialogMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SimpleDialogDemo();
  }
}

@storybook.Story('Default')
class SimpleDialogDefaultStory extends StoryObj<SimpleDialogMeta>
    with _$SimpleDialogDefaultStory {}
