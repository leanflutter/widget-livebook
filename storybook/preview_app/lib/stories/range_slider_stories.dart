
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/range_slider/range_slider.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'range_slider_stories.g.dart';

@storybook.Meta(
  title: 'Material/RangeSlider',
)
class RangeSliderMeta extends Meta with _$RangeSliderMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RangeSliderDemo();
  }
}

@storybook.Story('Default')
class RangeSliderDefaultStory extends StoryObj<RangeSliderMeta>
    with _$RangeSliderDefaultStory {}
