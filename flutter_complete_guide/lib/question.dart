import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        question,
        style: TextStyle(fontSize: 20, color: Colors.teal.shade500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
