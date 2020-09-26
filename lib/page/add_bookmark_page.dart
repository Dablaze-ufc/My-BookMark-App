import 'package:flutter/material.dart';

class AddBookMarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new Bookmark"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.check),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.title),
                  labelText: "Title",
                  hintText: "Title of the bookmark",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.link),
                  labelText: "URL",
                  hintText: "WebPage Link",
                  border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
