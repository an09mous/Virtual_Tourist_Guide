import 'package:flutter/material.dart';
import 'package:gogoa/custom_widgets/comment_box.dart';

void main() => runApp(GoGoa());

class GoGoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoGoa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CommentBox()
    );
  }
}

