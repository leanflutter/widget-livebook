
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/row/row.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'row_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Row',
)
class RowMeta extends Meta with _$RowMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RowDemo();
  }
}

@storybook.Story('Default')
class RowDefaultStory extends StoryObj<RowMeta>
    with _$RowDefaultStory {}
