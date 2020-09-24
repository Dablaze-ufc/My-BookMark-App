import 'package:flutter/material.dart';
import 'package:new_project/model/bookmark.dart';
import 'package:new_project/page/add_bookmark_page.dart';
import 'package:new_project/widgets/bookmark_list_widget.dart';

class BookmarksPage extends StatelessWidget {
  List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "www.google.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My BookMarks"),
      ),
      body: BookmarksListWidget(bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => AddBookMarkPage()),
          );
        },
        label: Text("Add"),
      ),
    );
  }


}
