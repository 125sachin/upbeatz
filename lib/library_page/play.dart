import 'package:audioplayers/audioplayers.dart';
import 'package:emplayer/Models/music.dart';
import 'package:flutter/material.dart';

class NowPlaying extends StatefulWidget {
  final Music music;
  const NowPlaying(this.music, {super.key});

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  AudioPlayer audioPlayer = AudioPlayer();

  bool flag1 = false;
  bool flag2 = false;
  bool flag3 = false;

  @override
  Widget build(BuildContext context) {
    Music music = widget.music;
    double _value = 0;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                height: 450,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF9BAFD9),
                              Color(0xFF103783),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(music.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Text(
                      music.name,
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      music.artists,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFFe536ab),
                    Color(0xFF5C03BC),
                    Color(0xFF0E0725),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Slider(
                min: 0,
                max: 100,
                value: _value,
                onChanged: (value) {
                  setState(
                    () {
                      _value = value;
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 10, width: 10),
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        if (flag3)
                          flag3 = false;
                        else
                          flag3 = true;
                      },
                    );
                  },
                  child: flag3
                      ? Icon(
                          Icons.repeat_on_rounded,
                          size: 33,
                        )
                      : Icon(
                          Icons.repeat_rounded,
                          size: 33,
                        ),
                ),
                SizedBox(height: 20, width: 20),
                Icon(
                  Icons.skip_previous_rounded,
                  size: 40,
                ),
                GestureDetector(
                  onTap: () async {
                    setState(() {
                      if (flag1) {
                        flag1 = false;
                      } else {
                        flag1 = true;
                      }
                    });
                    if (flag1) {
                      await audioPlayer.play(UrlSource(music.url));
                    } else {
                      await audioPlayer.pause();
                    }
                  },
                  child: flag1
                      ? Icon(
                          Icons.pause_circle_filled_rounded,
                          size: 70,
                        )
                      : Icon(
                          Icons.play_circle_fill_rounded,
                          size: 70,
                        ),
                ),
                Icon(
                  Icons.skip_next_rounded,
                  size: 40,
                ),
                SizedBox(height: 20, width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (flag2) {
                        flag2 = false;
                      } else {
                        flag2 = true;
                      }
                    });
                  },
                  child: flag2
                      ? Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                          size: 33,
                        )
                      : Icon(
                          Icons.favorite_outline_rounded,
                          size: 33,
                        ),
                ),
                SizedBox(height: 10, width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
