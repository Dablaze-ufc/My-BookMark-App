import 'package:flutter/material.dart';
import 'package:new_project/page/add_bookmark_page.dart';
import 'package:new_project/page/view_bookmark_page.dart';

void navigateToBookmarkDetailPage(context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ViewBookmarkedPage()));
}

Future navigateToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AddBookMarkPage()));
}
