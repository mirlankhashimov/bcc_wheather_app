import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'animals_screen.dart';

class AnimalDetailsPage extends StatefulWidget {
  const AnimalDetailsPage({super.key});

  @override
  State<AnimalDetailsPage> createState() => _AnimalDetailsPageState();
}

class _AnimalDetailsPageState extends State<AnimalDetailsPage> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  bool played = false;

  @override
  Widget build(BuildContext context) {
    var animal = ModalRoute.of(context)?.settings.arguments as Animal;

    return Scaffold(
        appBar: AppBar(title: Text(animal.name)),
        body: Card(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Image.asset(
                animal.icon,
                height: 120,
              ),
              Row(children: [
                const SizedBox(width: 16),
                RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      played = !played;
                    });
                    _playAnimaAudio(animal);
                  },
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                  child: Icon(
                    played ? Icons.pause : Icons.play_circle,
                    size: 35.0,
                  ),
                ),
                Text(animal.name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ]),
              ListTile(
                title: Text(animal.info),
              )
            ])));
  }

  _playAnimaAudio(Animal animal) {
    if (assetsAudioPlayer.isPlaying.value == false) {
      assetsAudioPlayer.open(Audio(animal.sound));
    }
    assetsAudioPlayer.playOrPause();
  }

  @override
  void initState() {
    assetsAudioPlayer.playlistFinished.listen((finished) {
      if (finished) {
        setState(() {
          played = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    assetsAudioPlayer.stop();
    super.dispose();
  }
}
