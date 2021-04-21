import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {

  final Map<String, Object> questions;
  final void Function() questionAnswerFunction;


  Quiz(this.questions, this.questionAnswerFunction);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Question('${questions['question']}'),
          //spread this into children's list of widgets
          ...(questions['answers'] as List<String>)
              .map((e) => AnswerButton(questionAnswerFunction, e))
              .toList()
        ],
      );
  }
}
