
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_page_scaffold/cupertino_page_scaffold.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_page_scaffold_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoPageScaffold',
)
class CupertinoPageScaffoldMeta extends Meta with _$CupertinoPageScaffoldMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoPageScaffoldDemo();
  }
}

@storybook.Story('Default')
class CupertinoPageScaffoldDefaultStory extends StoryObj<CupertinoPageScaffoldMeta>
    with _$CupertinoPageScaffoldDefaultStory {}
