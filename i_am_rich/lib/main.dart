import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('I am Rich!'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://img.favpng.com/15/17/20/blue-diamond-blue-diamond-png-favpng-KJupy4TMbyyyz7JF5ghUYy7Vf.jpg'),
            ),
          )),
    ),
  );
}
