
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/slider/slider.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'slider_stories.g.dart';

@storybook.Meta(
  title: 'Material/Slider',
)
class SliderMeta extends Meta with _$SliderMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const SliderDemo();
  }
}

@storybook.Story('Default')
class SliderDefaultStory extends StoryObj<SliderMeta>
    with _$SliderDefaultStory {}
