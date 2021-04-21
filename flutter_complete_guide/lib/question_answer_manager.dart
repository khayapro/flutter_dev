import 'package:flutter/material.dart';

import 'answer.dart';
import 'quiz.dart';

class QuestionAnswerManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuestionAnswerManagerState();
  }
}

class _QuestionAnswerManagerState extends State<QuestionAnswerManager> {
  var _questionCount = 0;
  final _questions = const [
    {
      'question': 'Whats your favourite color?',
      'answers': ['Green', 'Black', 'Blue', 'Brown'],
    },
    {
      'question': 'Whats your favourite country?',
      'answers': ['South Africa', 'America', 'Germany', 'Brazil'],
    },
    {
      'question': 'Whats your favourite Planet?',
      'answers': ['Mars', 'Earth', 'Jupiter', 'Venus'],
    }
  ];

  void _questionAnswer() {
    setState(() {
      if (_questionCount < _questions.length) {
        _questionCount++;
      }
    });
    print('questionCount value: $_questionCount');
  }

  void _resetQuestionCount() {
    setState(() {
      this._questionCount = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Header Title'),
        ),
        body: Center(
          child: _questionCount < _questions.length
              ? Quiz(_questions[_questionCount], _questionAnswer)
              : AnswerButton(_resetQuestionCount, 'Finished, Press to Reset'),
        ),
      ),
    );
  }
}
