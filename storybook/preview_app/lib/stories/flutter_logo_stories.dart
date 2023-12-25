
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/flutter_logo/flutter_logo.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'flutter_logo_stories.g.dart';

@storybook.Meta(
  title: 'Material/FlutterLogo',
)
class FlutterLogoMeta extends Meta with _$FlutterLogoMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const FlutterLogoDemo();
  }
}

@storybook.Story('Default')
class FlutterLogoDefaultStory extends StoryObj<FlutterLogoMeta>
    with _$FlutterLogoDefaultStory {}
