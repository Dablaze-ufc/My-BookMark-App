import 'package:flutter/material.dart';
import 'package:new_project/model/bookmark.dart';
import 'package:new_project/util/navigation_util.dart';
import 'package:new_project/widgets/bookmark_grid_widget.dart';
import 'package:new_project/widgets/bookmark_list_widget.dart';

class BookmarksPage extends StatefulWidget {
  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  List<Bookmark> bookmarksList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My BookMarks"),
      ),
      body: BookmarksGridWidget(bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () => onAddButtonPressed(context),
        label: Text("Add"),
      ),
    );
  }

  onAddButtonPressed(BuildContext context) async {
    final result = await navigateToAddBookmarkPage(context);
    if (result != null && result is Bookmark) {
      setState(() {
        bookmarksList.add(result);
      });
    }
  }
}
