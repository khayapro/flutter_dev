import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(onPressed: () {
//              final player = new AudioCache();
//              player.play('note1.wav');
            print('clicking button...');

            }, child: Text("Play Me!")),
          ),
        ),
      ),
    );
  }
}
