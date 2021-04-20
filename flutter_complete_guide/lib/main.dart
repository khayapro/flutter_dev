import 'package:flutter/material.dart';

import 'question.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {

  var _questionCount = 0;

  Widget build(BuildContext context) {

    var _questions = [
      'Whats your favourite country?',
      'Whats your favourite city?',
      'Have been tested for Covid-19 - LOL?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('App Header Title'),
          ),
          body: Center(
            child: Column(
              children: [
                Question(_questions[_questionCount]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: _questionAnswer,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: _questionAnswer,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: _questionAnswer,
                ),
              ],
            ),
          )),
    );
  }

  void _questionAnswer() {
    setState(() {
      if (_questionCount < 2) {
        _questionCount++;
      } else {
        _questionCount = 0;
      }
    });
    print('questionCount value: $_questionCount');
  }

}
