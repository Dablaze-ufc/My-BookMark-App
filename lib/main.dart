import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_project/page/bookmarks_page.dart';

void main() {
 runApp(BookMarkApp());
}

class BookMarkApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}
