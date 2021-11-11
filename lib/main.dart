import 'package:flutter/material.dart';
import './widget/container.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const SoundBoard());
}

class SoundBoard extends StatelessWidget {
  const SoundBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final audioPlayer = AudioPlayer();
    AudioCache audioCache = AudioCache(fixedPlayer: audioPlayer);

    void stopPlayer() async {
      await audioPlayer.stop();
    }

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('SoundBoardApp'),
          ),
          body: Column(
            children: [
              RowContainer('BADUMTUSS', 'ON HELL NO!', (String value) async {
                stopPlayer();
                await audioCache.play(
                  'dumbest-company-1.mp3',
                );
              }, (String value) async {
                stopPlayer();
                await audioCache.play('lalalalala.mp3');
              }),
              RowContainer('SHREK-HELLO', 'HIS NAME IS JOHN CENA',
                  (String value) async {
                stopPlayer();
                await audioCache.play(
                  'dumbest-company-1.mp3',
                );
              }, (String value) async {
                stopPlayer();
                await audioCache.play('johncena.mp3');
              }),
              RowContainer('KA-CHING', 'LETS DO THIS', (String value) async {
                await audioCache.play('ka-ching.mp3');
              }, (String value) async {
                stopPlayer();
                await audioCache.play('lets-do-this.mp3');
              }),
              RowContainer('WHY YOU ALWAYS LYING?', 'MARIO',
                  (String value) async {
                stopPlayer();
                await audioCache.play('ka-ching.mp3');
              }, (String value) async {
                stopPlayer();
                await audioCache.play('mario.mp3');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
