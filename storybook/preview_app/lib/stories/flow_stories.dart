
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/flow/flow.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'flow_stories.g.dart';

@storybook.Meta(
  title: 'Material/Flow',
)
class FlowMeta extends Meta with _$FlowMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const FlowDemo();
  }
}

@storybook.Story('Default')
class FlowDefaultStory extends StoryObj<FlowMeta>
    with _$FlowDefaultStory {}
