import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          backgroundColor: Colors.teal,
        ),
        body: Center(child: ICounter()),
      ),
    );
  }
}

class _Hello extends StatelessWidget {
  final String greeting;

  const _Hello(this.greeting);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          greeting,
          style: TextStyle(
            color: Colors.blue,
            backgroundColor: Colors.teal.shade200,
          ),
        ));
  }
}

class ICounter extends StatefulWidget {
  @override
  _ICounterState createState() => _ICounterState();
}

class _ICounterState extends State<ICounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          count++;
        });

      },
      child: Text("Count is $count"),
    );
  }
}

