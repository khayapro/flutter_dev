import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CalculatorAppState();
}

class CalculatorAppState extends State<CalculatorApp> {
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CalculatorApp"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Amount"),
              TextField(
                controller: inputController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "R 2000.00"),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
