import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CalculatorApp"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total Amount"),
          ],
        ),
      ),
    );
  }
}
