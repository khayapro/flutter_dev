import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(EightBall());
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magic 8 Ball",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask me anything!"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          color: Colors.blueGrey.shade200,
          child: Center(
            child: FlatButton(
              child: Image.asset("assets/images/ball$ballNumber.png"),
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
