
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/time_picker/time_picker.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'time_picker_stories.g.dart';

@storybook.Meta(
  title: 'Material/TimePicker',
)
class TimePickerMeta extends Meta with _$TimePickerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TimePickerDemo();
  }
}

@storybook.Story('Default')
class TimePickerDefaultStory extends StoryObj<TimePickerMeta>
    with _$TimePickerDefaultStory {}
