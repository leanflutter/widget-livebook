
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/radio/radio.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'radio_stories.g.dart';

@storybook.Meta(
  title: 'Material/Radio',
)
class RadioMeta extends Meta with _$RadioMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RadioDemo();
  }
}

@storybook.Story('Default')
class RadioDefaultStory extends StoryObj<RadioMeta>
    with _$RadioDefaultStory {}
