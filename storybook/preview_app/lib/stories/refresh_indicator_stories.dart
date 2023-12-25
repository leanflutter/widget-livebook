
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/refresh_indicator/refresh_indicator.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'refresh_indicator_stories.g.dart';

@storybook.Meta(
  title: 'Material/RefreshIndicator',
)
class RefreshIndicatorMeta extends Meta with _$RefreshIndicatorMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const RefreshIndicatorDemo();
  }
}

@storybook.Story('Default')
class RefreshIndicatorDefaultStory extends StoryObj<RefreshIndicatorMeta>
    with _$RefreshIndicatorDefaultStory {}
