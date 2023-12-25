
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/image/image.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'image_stories.g.dart';

@storybook.Meta(
  title: 'Material/Image',
)
class ImageMeta extends Meta with _$ImageMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ImageDemo();
  }
}

@storybook.Story('Default')
class ImageDefaultStory extends StoryObj<ImageMeta>
    with _$ImageDefaultStory {}
