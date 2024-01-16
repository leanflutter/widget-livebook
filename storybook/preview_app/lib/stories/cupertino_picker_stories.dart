import 'package:flutter/widgets.dart';
import 'package:flutter_api_samples/cupertino/picker/cupertino_picker.0.dart'
    as sample0;
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
    return const sample0.CupertinoPickerApp();
  }
}

@storybook.Story('Default')
class CupertinoPickerDefaultStory extends StoryObj<CupertinoPickerMeta>
    with _$CupertinoPickerDefaultStory {}
