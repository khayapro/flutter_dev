import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylophone App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone Player"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {
                  final player = new AudioCache();
                  player.play("note1.wav");
                },
                child: Text(
                  "",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  final player = new AudioCache();
                  player.play("note2.wav");
                },
                child: Text(
                  "",
                ),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  final player = new AudioCache();
                  player.play("note3.wav");
                },
                child: Text(
                  "",
                ),
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  final player = new AudioCache();
                  player.play("note4.wav");
                },
                child: Text(""),
                color: Colors.lightGreen,
              ),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note5.wav");
                  },
                  child: Text(""), color: Colors.green,),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note6.wav");
                  },
                  child: Text(""), color: Colors.blue,),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note7.wav");
                  },
                  child: Text(""), color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
