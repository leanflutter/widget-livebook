
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_date_picker/cupertino_date_picker.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_date_picker_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoDatePicker',
)
class CupertinoDatePickerMeta extends Meta with _$CupertinoDatePickerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoDatePickerDemo();
  }
}

@storybook.Story('Default')
class CupertinoDatePickerDefaultStory extends StoryObj<CupertinoDatePickerMeta>
    with _$CupertinoDatePickerDefaultStory {}
