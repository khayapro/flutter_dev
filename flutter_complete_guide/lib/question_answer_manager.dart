import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class QuestionAnswerManager extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _QuestionAnswerManagerState();
  }
}

class _QuestionAnswerManagerState extends State<QuestionAnswerManager> {
  var _questionCount = 0;

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
              AnswerButton(_questionAnswer),
              AnswerButton(_questionAnswer),
              AnswerButton(_questionAnswer),
            ],
          ),
        ),
      ),
    );
  }
}