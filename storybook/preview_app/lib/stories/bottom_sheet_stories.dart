
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/bottom_sheet/bottom_sheet.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'bottom_sheet_stories.g.dart';

@storybook.Meta(
  title: 'Material/BottomSheet',
)
class BottomSheetMeta extends Meta with _$BottomSheetMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const BottomSheetDemo();
  }
}

@storybook.Story('Default')
class BottomSheetDefaultStory extends StoryObj<BottomSheetMeta>
    with _$BottomSheetDefaultStory {}
