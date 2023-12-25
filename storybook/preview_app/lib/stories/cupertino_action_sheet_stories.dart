
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_action_sheet/cupertino_action_sheet.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_action_sheet_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoActionSheet',
)
class CupertinoActionSheetMeta extends Meta with _$CupertinoActionSheetMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoActionSheetDemo();
  }
}

@storybook.Story('Default')
class CupertinoActionSheetDefaultStory extends StoryObj<CupertinoActionSheetMeta>
    with _$CupertinoActionSheetDefaultStory {}
