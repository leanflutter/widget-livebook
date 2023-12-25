
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/decorated_box_transition/decorated_box_transition.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'decorated_box_transition_stories.g.dart';

@storybook.Meta(
  title: 'Material/DecoratedBoxTransition',
)
class DecoratedBoxTransitionMeta extends Meta with _$DecoratedBoxTransitionMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DecoratedBoxTransitionDemo();
  }
}

@storybook.Story('Default')
class DecoratedBoxTransitionDefaultStory extends StoryObj<DecoratedBoxTransitionMeta>
    with _$DecoratedBoxTransitionDefaultStory {}
