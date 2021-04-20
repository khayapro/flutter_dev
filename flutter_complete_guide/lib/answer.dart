import 'package:flutter/material.dart';
import 'dart:core';

class Answer extends StatelessWidget {

  final void Function() invokeFunction;
  
  Answer(this.invokeFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.teal.shade500),
        ),
        child: Text('Answer 1'),
        onPressed: invokeFunction,
      ),
    );
  }
}
