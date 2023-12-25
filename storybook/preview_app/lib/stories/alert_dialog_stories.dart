
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/alert_dialog/alert_dialog.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'alert_dialog_stories.g.dart';

@storybook.Meta(
  title: 'Material/AlertDialog',
)
class AlertDialogMeta extends Meta with _$AlertDialogMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const AlertDialogDemo();
  }
}

@storybook.Story('Default')
class AlertDialogDefaultStory extends StoryObj<AlertDialogMeta>
    with _$AlertDialogDefaultStory {}
