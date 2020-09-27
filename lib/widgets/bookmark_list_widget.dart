import 'package:flutter/material.dart';
import 'package:new_project/model/bookmark.dart';

import 'bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  List<Bookmark> bookmarksList;

  BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getBookmarkWidgetList(),
    );
  }

  List<BookmarkListItemWidget> getBookmarkWidgetList() {
    List<BookmarkListItemWidget> list = [];
    for (Bookmark bookmark in bookmarksList) {
      list.add(BookmarkListItemWidget(bookmark));
    }
    return list;
  }
}
