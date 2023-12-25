
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/circle_avatar/circle_avatar.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'circle_avatar_stories.g.dart';

@storybook.Meta(
  title: 'Material/CircleAvatar',
)
class CircleAvatarMeta extends Meta with _$CircleAvatarMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CircleAvatarDemo();
  }
}

@storybook.Story('Default')
class CircleAvatarDefaultStory extends StoryObj<CircleAvatarMeta>
    with _$CircleAvatarDefaultStory {}
