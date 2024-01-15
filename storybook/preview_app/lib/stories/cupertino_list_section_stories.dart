import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_list_section/cupertino_list_section.dart';
import 'package:preview_app/demos/cupertino_list_section/cupertino_list_section_inset_grouped.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_list_section_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoListSection',
)
class CupertinoListSectionMeta extends Meta with _$CupertinoListSectionMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoListSectionDemo();
  }
}

@storybook.Story('Default')
class CupertinoListSectionDefaultStory
    extends StoryObj<CupertinoListSectionMeta>
    with _$CupertinoListSectionDefaultStory {}

@storybook.Story('Inset Grouped')
class CupertinoListSectionInsetGroupedStory
    extends StoryObj<CupertinoListSectionMeta>
    with _$CupertinoListSectionInsetGroupedStory {
  @override
  Widget build(BuildContext context, List<Arg> args) {
    return const CupertinoListSectionInsetGroupedDemo();
  }
}
