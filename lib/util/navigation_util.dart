import 'package:flutter/material.dart';

void navigate(context, destination) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => destination));
}
