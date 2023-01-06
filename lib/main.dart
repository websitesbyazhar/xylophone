import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int NoteToPlay) {
    final player = AudioPlayer();
    player.play(AssetSource('note$NoteToPlay.wav'));
  }

  Widget keyBuilder({required Color color, required int soundNumber}) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () async {
          playSound(soundNumber);
        },
        child: Text(''),
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          //minimumSize: Size.infinite,
        ),
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
            children: [
              keyBuilder(color: Colors.red, soundNumber: 1),
              keyBuilder(color: Colors.orange, soundNumber: 2),
              keyBuilder(color: Colors.cyan, soundNumber: 3),
              keyBuilder(color: Colors.green, soundNumber: 4),
              keyBuilder(color: Colors.yellow, soundNumber: 5),
              keyBuilder(color: Colors.blue, soundNumber: 6),
              keyBuilder(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
