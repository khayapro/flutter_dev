import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CalculatorAppState();
}

//something to test... | another test...
class CalculatorAppState extends State<CalculatorApp> {
  final inputController = TextEditingController();
  final List<bool> _tipSelection = [true, false, false];
  var _tipAmount = "0";

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
              Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  "Tip: $_tipAmount",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade400),
                ),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Card(
                  color: Colors.teal,
                  child: Center(child: Text("Display Sized Box Center")),
                ),
              ),
              Text("Total Amount"),
              SizedBox(
                width: 70,
                child: TextField(
                  controller: inputController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "R200.00"),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ToggleButtons(
                  children: [Text("10%"), Text("15%"), Text("20%")],
                  isSelected: _tipSelection,
                  onPressed: _updateSelection,
                ),
              ),
              ElevatedButton(
                onPressed: _calculateTip,
                child: Text("Calculate Tip"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _updateSelection(int indexSelected) {
    for (int i = 0; i < _tipSelection.length; i++) {
      setState(() {
        _tipSelection[i] = indexSelected == i;
      });
    }
  }

  void _calculateTip() {
    final totalAmount = double.parse(inputController.text);
    final selectedIndex = _tipSelection.indexWhere((element) => element);
    final tipPercentage = [0.1, 0.15, 0.20][selectedIndex];

    setState(() {
      _tipAmount = "R ${totalAmount * tipPercentage}";
    });
  }
}
