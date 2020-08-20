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
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildSoundButton(sound: "note1.wav", color: Colors.red),
              buildSoundButton(sound: "note2.wav", color: Colors.orange),
              buildSoundButton(sound: "note3.wav", color: Colors.yellow),
              buildSoundButton(sound: "note4.wav", color: Colors.lightGreen),
              buildSoundButton(sound: "note5.wav", color: Colors.green),
              buildSoundButton(sound: "note6.wav", color: Colors.blue),
              buildSoundButton(sound: "note7.wav", color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildSoundButton({final String sound, final MaterialColor color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(sound);
        },
        child: Icon(Icons.music_note, color: Colors.white, size: 40,),
        color: color,
      ),
    );
  }

  void playSound(final String sound) {
    final player = new AudioCache();
    player.play(sound);
  }
}
