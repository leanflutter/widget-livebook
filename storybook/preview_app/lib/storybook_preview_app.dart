import 'package:flutter/material.dart';
import 'package:preview_app/storybook_config.g.dart';
import 'package:storybook_dart/storybook_dart.dart';
import 'package:storybook_dart_annotation/storybook_dart_annotation.dart'
    as storybook;

part 'storybook_preview_app.g.dart';

@storybook.StorybookPreviewer()
class StorybookPreviewApp extends StorybookPreviewer
    with _$StorybookPreviewApp {
  const StorybookPreviewApp({super.key});

  @override
  ThemeData get theme {
    return ThemeData.light().copyWith(
      extensions: [],
    );
  }
}
