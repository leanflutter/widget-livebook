
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_alert_dialog/cupertino_alert_dialog.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_alert_dialog_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoAlertDialog',
)
class CupertinoAlertDialogMeta extends Meta with _$CupertinoAlertDialogMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoAlertDialogDemo();
  }
}

@storybook.Story('Default')
class CupertinoAlertDialogDefaultStory extends StoryObj<CupertinoAlertDialogMeta>
    with _$CupertinoAlertDialogDefaultStory {}
