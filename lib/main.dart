// import 'dart:html';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XyloPhone());
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key? key}) : super(key: key);

  void play(int tuneNumber) {
    final player = AudioCache();
    player.play('assets_note$tuneNumber.wav');
  }

  Expanded createKey({required Color color, required int tuneNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play(tuneNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone')),
          backgroundColor: Colors.black,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          createKey(color: Colors.purple, tuneNumber: 1),
          createKey(color: Colors.indigo, tuneNumber: 2),
          createKey(color: Colors.blue, tuneNumber: 3),
          createKey(color: Colors.green, tuneNumber: 4),
          createKey(color: Colors.amber, tuneNumber: 5),
          createKey(color: Colors.orange, tuneNumber: 6),
          createKey(color: Colors.red, tuneNumber: 7),
        ]),
        backgroundColor: Colors.black,
      ),
    );
  }
}
