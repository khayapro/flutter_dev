import 'package:flutter/material.dart';
import 'dart:core';

class AnswerButton extends StatelessWidget {

  final void Function() invokeFunction;
  final String answerText;
  
  AnswerButton(this.invokeFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.teal.shade500),
        ),
        child: Text(this.answerText),
        onPressed: invokeFunction,
      ),
    );
  }
}
