import 'package:flutter/material.dart';

class AddBookMarkPage extends StatefulWidget {
  @override
  _AddBookMarkPageState createState() => _AddBookMarkPageState();
}

class _AddBookMarkPageState extends State<AddBookMarkPage> {
  final _titleTextController = TextEditingController();

  final _linkTextController = TextEditingController();

  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new Bookmark"),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) => FloatingActionButton(
          onPressed: () {
            String title = _titleTextController.text;
            String link = _linkTextController.text;
            Scaffold.of(context).hideCurrentSnackBar();
            if (isInputValid(title, link)) {
            } else {
              showInputError(context, title, link);
            }
          },
          child: Icon(Icons.check),
          backgroundColor: Colors.green,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              onFieldSubmitted: (textInput) {
                FocusScope.of(context).requestFocus(_linkFocusNode);
              },
              controller: _titleTextController,
              textInputAction: TextInputAction.next,
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
              controller: _linkTextController,
              focusNode: _linkFocusNode,
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

  @override
  void dispose() {
    _linkFocusNode.dispose();
    _linkTextController.dispose();
    _titleTextController.dispose();
    super.dispose();
  }

  bool isInputValid(String title, String link) {
    return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String link) {
    if (title.isEmpty) {
      displaySnackBar(context, "Tittle is Empty");
    } else if (link.isEmpty) {
      displaySnackBar(context, "Link is Empty");
    }
  }

  void displaySnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
