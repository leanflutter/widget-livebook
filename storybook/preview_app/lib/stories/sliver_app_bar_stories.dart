
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/sliver_app_bar/sliver_app_bar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'sliver_app_bar_stories.g.dart';

@storybook.Meta(
  title: 'Material/SliverAppBar',
)
class SliverAppBarMeta extends Meta with _$SliverAppBarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SliverAppBarDemo();
  }
}

@storybook.Story('Default')
class SliverAppBarDefaultStory extends StoryObj<SliverAppBarMeta>
    with _$SliverAppBarDefaultStory {}
