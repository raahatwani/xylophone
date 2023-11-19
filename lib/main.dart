// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MaterialApp(
      home: XylophoneApp(),
    ));



class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
  var devH = MediaQuery.of(context).size.height;
   var devW = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone App')),
        ),
        body: Column(
          children: [
            Button(
              n: 1,
              color: Colors.red,
            ),
            Button(
              n: 2,
              color: Colors.orange,
            ),
            Button(
              n: 3,
              color: Colors.yellow,
            ),
            Button(
              n: 4,
              color: Colors.green,
            ),
            Button(
              n: 5,
              color: Colors.teal,
            ),
            Button(
              n: 6,
              color: Colors.blue,
            ),
            Button(
              n: 7,
              color: Colors.purple,
            ),
          ],
        ));
  }
}

class Button extends StatelessWidget {
  int n;
  var color;
  Button({required this.n, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: () {
            play(n);
          }, child: Container(),
          ),
    );
  }
}



void play(int sound) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$sound.wav'));
}