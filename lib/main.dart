import 'package:flutter/material.dart';
import 'package:gogoa/pages/details.dart';

void main() => runApp(GoGoa());

class GoGoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoGoa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Details()
    );
  }
}

