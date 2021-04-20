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
            child: Column(
              children: [
                Text('Whats your favourite color?'),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: () => print('Button1 clicked! '),
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () => print('Button2 clicked! '),
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () => print('Button3 clicked! '),
                ),
              ],
            ),
          )),
    );
  }
}
