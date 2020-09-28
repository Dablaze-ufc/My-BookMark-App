import 'package:flutter/material.dart';
import 'package:new_project/model/bookmark.dart';
import 'package:new_project/widgets/bookmark_grid_item_widget.dart';

import 'bookmark_list_item_widget.dart';

class BookmarksGridWidget extends StatelessWidget {
  final List<Bookmark> bookmarksList;

  BookmarksGridWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2,
          crossAxisCount: 2,
          crossAxisSpacing: 6,
        ),
        itemCount: bookmarksList.length,
        itemBuilder: (BuildContext context, int index) {
          return BookmarkGridItemWidget(bookmarksList[index]);
        },
      ),
    );
  }
}
