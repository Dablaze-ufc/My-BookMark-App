import 'package:flutter/material.dart';
import 'package:new_project/model/bookmark.dart';
import 'package:new_project/widgets/view_web_page_widget.dart';

class ViewBookmarkedPage extends StatelessWidget {
  Bookmark bookmark;

  ViewBookmarkedPage(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(bookmark.tittle)),
        body: ViewWebPageWidget(bookmark.link));
  }
}
