
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/tooltip/tooltip.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'tooltip_stories.g.dart';

@storybook.Meta(
  title: 'Material/Tooltip',
)
class TooltipMeta extends Meta with _$TooltipMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const TooltipDemo();
  }
}

@storybook.Story('Default')
class TooltipDefaultStory extends StoryObj<TooltipMeta>
    with _$TooltipDefaultStory {}
