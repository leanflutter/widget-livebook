import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_picker/cupertino_picker.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_picker_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoPicker',
)
class CupertinoPickerMeta extends Meta with _$CupertinoPickerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoPickerDemo();
  }
}

@storybook.Story('Default')
class CupertinoPickerDefaultStory extends StoryObj<CupertinoPickerMeta>
    with _$CupertinoPickerDefaultStory {}
