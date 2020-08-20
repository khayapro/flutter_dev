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
          child: Center(
            child: FlatButton(
                onPressed: () {
                  final player = new AudioCache();
                  player.play("fileName");
                },
              child: Text("Play Sound")),
          ),
        ),
      ),
    );
  }
}
