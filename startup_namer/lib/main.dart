import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to my start-up app",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("Start-up Namer"),
        ),
        body: Center(
          child: RandomWords()
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();

}

class RandomWordsState extends State<RandomWords> {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}


