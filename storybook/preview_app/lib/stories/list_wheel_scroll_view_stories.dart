
import 'package:flutter/widgets.dart';
import 'package:preview_app/demos/list_wheel_scroll_view/list_wheel_scroll_view.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'list_wheel_scroll_view_stories.g.dart';

@storybook.Meta(
  title: 'Widgets/ListWheelScrollView',
)
class ListWheelScrollViewMeta extends Meta with _$ListWheelScrollViewMeta {
  @override
  Widget buildWidget(BuildContext context, List<Arg> args) {
    return const ListWheelScrollViewDemo();
  }
}

@storybook.Story('Default')
class ListWheelScrollViewDefaultStory extends StoryObj<ListWheelScrollViewMeta>
    with _$ListWheelScrollViewDefaultStory {}
