import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  void _buttonClick() {
    print("Button pressed !");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text("Whats your question?"),
                ElevatedButton(
                  onPressed: _buttonClick,
                  child: Text("Button1"),
                ),
                ElevatedButton(
                  onPressed: _buttonClick,
                  child: Text("Button2"),
                ),
                ElevatedButton(
                  onPressed: _buttonClick,
                  child: Text("Button3"),
                )
              ],
            ),
          ),
        ),
      ),
    );


  }
}
