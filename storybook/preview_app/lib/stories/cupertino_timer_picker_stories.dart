
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_timer_picker/cupertino_timer_picker.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_timer_picker_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoTimerPicker',
)
class CupertinoTimerPickerMeta extends Meta with _$CupertinoTimerPickerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoTimerPickerDemo();
  }
}

@storybook.Story('Default')
class CupertinoTimerPickerDefaultStory extends StoryObj<CupertinoTimerPickerMeta>
    with _$CupertinoTimerPickerDefaultStory {}
