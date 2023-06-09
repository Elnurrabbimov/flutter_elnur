import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersScreen extends StatefulWidget {
  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  dynamic numberOF = 0;

  void getAudio(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_number_$number.wav'));

    setState(() {
      numberOF = number;
    });
  }

  Expanded drawButton({required Color color, required int number}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          getAudio(number);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          backgroundColor: color,
          textStyle: const TextStyle(fontSize: 35, color: Colors.black),
          primary: Colors.white,
        ),
        child: Text('$number'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$numberOF'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () => {
          Navigator.pushNamed(context, '/home'),
        },
      ),
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [drawButton(color: Colors.orange, number: 0)],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  drawButton(color: Colors.black12, number: 1),
                  drawButton(color: Colors.pink, number: 2),
                  drawButton(color: Colors.greenAccent, number: 3),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  drawButton(color: Colors.yellowAccent, number: 4),
                  drawButton(color: Colors.cyan, number: 5),
                  drawButton(color: Colors.blueGrey, number: 6),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  drawButton(color: Colors.brown, number: 7),
                  drawButton(color: Colors.pinkAccent, number: 8),
                  drawButton(color: Colors.purpleAccent, number: 9),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  drawButton(color: Colors.green, number: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
