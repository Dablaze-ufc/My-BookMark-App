import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
 runApp(BookMarkApp());
}

class BookMarkApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("My BookMarks"),
      ),
      body: Container(),
      ),
    );
  }
}

