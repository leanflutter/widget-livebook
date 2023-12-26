
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/backdrop_filter/backdrop_filter.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'backdrop_filter_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/BackdropFilter',
)
class BackdropFilterMeta extends Meta with _$BackdropFilterMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const BackdropFilterDemo();
  }
}

@storybook.Story('Default')
class BackdropFilterDefaultStory extends StoryObj<BackdropFilterMeta>
    with _$BackdropFilterDefaultStory {}
