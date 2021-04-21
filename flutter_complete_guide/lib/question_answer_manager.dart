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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Header Title'),
        ),
        body: Center(
          child: Column(
            children: [
              Question('${_questions[_questionCount]['question']}'),
              AnswerButton(_questionAnswer, '${_questions[_questionCount]['answers']}'),
              AnswerButton(_questionAnswer, '${_questions[_questionCount]['answers']}'),
              AnswerButton(_questionAnswer, '${_questions[_questionCount]['answers']}'),
              AnswerButton(_questionAnswer, '${_questions[_questionCount]['answers']}'),
            ],
          ),
        ),
      ),
    );
  }
}
