
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/card/card.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'card_stories.g.dart';

@storybook.Meta(
  title: 'Material/Card',
)
class CardMeta extends Meta with _$CardMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const CardDemo();
  }
}

@storybook.Story('Default')
class CardDefaultStory extends StoryObj<CardMeta>
    with _$CardDefaultStory {}
