
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_slider/cupertino_slider.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_slider_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoSlider',
)
class CupertinoSliderMeta extends Meta with _$CupertinoSliderMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoSliderDemo();
  }
}

@storybook.Story('Default')
class CupertinoSliderDefaultStory extends StoryObj<CupertinoSliderMeta>
    with _$CupertinoSliderDefaultStory {}
