import 'dart:convert';
import 'dart:io';

import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:uiexplorer/includes.dart';



void main() {
  LocalFileSystem fs = const LocalFileSystem();

  Map<String, dynamic> json = new Map();

  List<String> widgets = new List();
  sliceExamples.forEach((v) {
    widgets.add(v.name.replaceAll('Slice', ''));
  });

  json.putIfAbsent('widgets', () => widgets);

  String jsonString = jsonEncode(json);

  fs.file('db.json').writeAsStringSync(jsonString);
}
