
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/cupertino_activity_indicator/cupertino_activity_indicator.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_activity_indicator_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoActivityIndicator',
)
class CupertinoActivityIndicatorMeta extends Meta with _$CupertinoActivityIndicatorMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CupertinoActivityIndicatorDemo();
  }
}

@storybook.Story('Default')
class CupertinoActivityIndicatorDefaultStory extends StoryObj<CupertinoActivityIndicatorMeta>
    with _$CupertinoActivityIndicatorDefaultStory {}
