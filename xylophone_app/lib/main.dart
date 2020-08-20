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
                    "Play Sound 1",
                    style: TextStyle(color: Colors.white),
                  ),
                color: Colors.red,

              ),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note2.wav");
                  },
                  child: Text("Play Sound 2")),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note3.wav");
                  },
                  child: Text("Play Sound 3")),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note4.wav");
                  },
                  child: Text("Play Sound 4")),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note5.wav");
                  },
                  child: Text("Play Sound 5")),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note6.wav");
                  },
                  child: Text("Play Sound 6")),
              FlatButton(
                  onPressed: () {
                    final player = new AudioCache();
                    player.play("note7.wav");
                  },
                  child: Text("Play Sound 7")),
            ],
          ),
        ),
      ),
    );
  }
}
