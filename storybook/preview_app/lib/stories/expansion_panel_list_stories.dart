
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/expansion_panel_list/expansion_panel_list.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'expansion_panel_list_stories.g.dart';

@storybook.Meta(
  title: 'Material/ExpansionPanelList',
)
class ExpansionPanelListMeta extends Meta with _$ExpansionPanelListMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ExpansionPanelListDemo();
  }
}

@storybook.Story('Default')
class ExpansionPanelListDefaultStory extends StoryObj<ExpansionPanelListMeta>
    with _$ExpansionPanelListDefaultStory {}
