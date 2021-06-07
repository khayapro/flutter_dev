import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello App"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text("Button1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Button2"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Button3"),
            )
          ],
        ),
      ),
    );
  }
}
