
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/wrap/wrap.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'wrap_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/Wrap',
)
class WrapMeta extends Meta with _$WrapMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const WrapDemo();
  }
}

@storybook.Story('Default')
class WrapDefaultStory extends StoryObj<WrapMeta>
    with _$WrapDefaultStory {}
