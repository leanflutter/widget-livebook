
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/opacity/opacity.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'opacity_stories.g.dart';

@storybook.Meta(
  title: 'Material/Opacity',
)
class OpacityMeta extends Meta with _$OpacityMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const OpacityDemo();
  }
}

@storybook.Story('Default')
class OpacityDefaultStory extends StoryObj<OpacityMeta>
    with _$OpacityDefaultStory {}
