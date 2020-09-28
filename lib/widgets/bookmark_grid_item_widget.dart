import 'package:flutter/material.dart';
import 'package:new_project/model/bookmark.dart';
import 'package:new_project/util/navigation_util.dart';

class BookmarkGridItemWidget extends StatelessWidget {
  final Bookmark _bookmark;

  BookmarkGridItemWidget(this._bookmark);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () => navigateToBookmarkDetailPage(_bookmark, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
