import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {

  var questionCount = 0;

  Widget build(BuildContext context) {

    var questions = [
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
                Text(questions[questionCount]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: questionAnswer,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: questionAnswer,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: questionAnswer,
                ),
              ],
            ),
          )),
    );
  }

  void questionAnswer() {
    setState(() {
      questionCount++;
    });
    print('questionCount value: $questionCount');
  }

}
