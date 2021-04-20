import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Header Title'),
        ),
        body: Center(
          child: Text('Hello Center!!'),
        ),
      ),
    );
  }
}
