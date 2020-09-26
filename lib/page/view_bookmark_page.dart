import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookmarkedPage extends StatefulWidget {
  @override
  _ViewBookmarkedPageState createState() => _ViewBookmarkedPageState();
}

class _ViewBookmarkedPageState extends State<ViewBookmarkedPage> {
  var _isLoadingWebPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Bookmark")),
      body: Stack(
        alignment: Alignment.center,
        children: [
          WebView(
              onPageFinished: (url) {
                setState(() {
                  _isLoadingWebPage = false;
                });
              },
              initialUrl: "https://google.com"),
          _isLoadingWebPage ? CircularProgressIndicator() : Container(),
        ],
      ),
    );
  }
}
