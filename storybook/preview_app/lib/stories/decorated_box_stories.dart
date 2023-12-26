
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/decorated_box/decorated_box.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'decorated_box_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/DecoratedBox',
)
class DecoratedBoxMeta extends Meta with _$DecoratedBoxMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const DecoratedBoxDemo();
  }
}

@storybook.Story('Default')
class DecoratedBoxDefaultStory extends StoryObj<DecoratedBoxMeta>
    with _$DecoratedBoxDefaultStory {}
