
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/date_picker/date_picker.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'date_picker_stories.g.dart';

@storybook.Meta(
  title: 'Material/DatePicker',
)
class DatePickerMeta extends Meta with _$DatePickerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DatePickerDemo();
  }
}

@storybook.Story('Default')
class DatePickerDefaultStory extends StoryObj<DatePickerMeta>
    with _$DatePickerDefaultStory {}
