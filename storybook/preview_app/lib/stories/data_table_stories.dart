
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/data_table/data_table.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'data_table_stories.g.dart';

@storybook.Meta(
  title: 'Material/DataTable',
)
class DataTableMeta extends Meta with _$DataTableMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DataTableDemo();
  }
}

@storybook.Story('Default')
class DataTableDefaultStory extends StoryObj<DataTableMeta>
    with _$DataTableDefaultStory {}
