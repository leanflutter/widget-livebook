
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/table/table.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'table_stories.g.dart';

@storybook.Meta(
  title: 'Material/Table',
)
class TableMeta extends Meta with _$TableMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TableDemo();
  }
}

@storybook.Story('Default')
class TableDefaultStory extends StoryObj<TableMeta>
    with _$TableDefaultStory {}
