
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/column/column.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'column_stories.g.dart';

@storybook.Meta(
  title: 'Material/Column',
)
class ColumnMeta extends Meta with _$ColumnMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ColumnDemo();
  }
}

@storybook.Story('Default')
class ColumnDefaultStory extends StoryObj<ColumnMeta>
    with _$ColumnDefaultStory {}
