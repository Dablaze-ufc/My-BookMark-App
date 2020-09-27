import 'package:flutter/material.dart';
import 'package:new_project/model/bookmark.dart';
import 'package:new_project/page/view_bookmark_page.dart';
import 'package:new_project/util/navigation_util.dart';

class BookmarkListItemWidget extends StatelessWidget {
  Bookmark _bookmark;

  BookmarkListItemWidget(this._bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () => navigateToBookmarkDetailPage(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _bookmark.tittle,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              _bookmark.link,
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}
