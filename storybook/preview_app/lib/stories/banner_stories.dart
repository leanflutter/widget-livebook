
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/banner/banner.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'banner_stories.g.dart';

@storybook.Meta(
  title: 'Material/Banner',
)
class BannerMeta extends Meta with _$BannerMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const BannerDemo();
  }
}

@storybook.Story('Default')
class BannerDefaultStory extends StoryObj<BannerMeta>
    with _$BannerDefaultStory {}
