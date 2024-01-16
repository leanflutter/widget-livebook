import 'package:flutter/widgets.dart';
import 'package:flutter_api_samples/cupertino/refresh/cupertino_sliver_refresh_control.0.dart'
    as sample0;
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'cupertino_sliver_refresh_control_stories.g.dart';

@storybook.Meta(
  title: 'Cupertino/CupertinoSliverRefreshControl',
)
class CupertinoSliverRefreshControlMeta extends Meta
    with _$CupertinoSliverRefreshControlMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const sample0.RefreshControlApp();
  }
}

@storybook.Story('Default')
class CupertinoSliverRefreshControlDefaultStory
    extends StoryObj<CupertinoSliverRefreshControlMeta>
    with _$CupertinoSliverRefreshControlDefaultStory {}
