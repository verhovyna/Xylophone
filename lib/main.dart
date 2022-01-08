import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color? color, required int soundNumber}) {
    return Expanded(
        child: FlatButton(
      onPressed: () {
        playSound(soundNumber);
      },
      child: Text(''),
      color: color,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'XYLOPHONE',
            style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.redAccent, soundNumber: 1),
            SizedBox(
              height: 15,
            ),
            buildKey(color: Colors.orangeAccent, soundNumber: 2),
            SizedBox(
              height: 15,
            ),
            buildKey(color: Colors.yellowAccent, soundNumber: 3),
            SizedBox(
              height: 15,
            ),
            buildKey(color: Colors.greenAccent, soundNumber: 4),
            SizedBox(
              height: 15,
            ),
            buildKey(color: Colors.blueAccent, soundNumber: 5),
            SizedBox(
              height: 15,
            ),
            buildKey(color: Colors.purpleAccent, soundNumber: 6),
            SizedBox(
              height: 15,
            ),
            buildKey(color: Colors.pinkAccent, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
