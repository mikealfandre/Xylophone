import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String note) {
    final player = AudioCache();
    player.play(note);
  }

  Expanded buildKey({String note, Color noteColor}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(note);
          },
          color: noteColor
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note: 'note1.wav', noteColor: Colors.red),
              buildKey(note: 'note2.wav', noteColor: Colors.orange),
              buildKey(note: 'note3.wav', noteColor: Colors.yellow),
              buildKey(note: 'note4.wav', noteColor: Colors.lightGreen),
              buildKey(note: 'note5.wav', noteColor: Colors.green),
              buildKey(note: 'note6.wav', noteColor: Colors.blue),
              buildKey(note: 'note7.wav', noteColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
