import 'package:emplayer/library_page/songcontain.dart';
import 'package:flutter/material.dart';
import 'package:emplayer/Models/music.dart';

class Songs extends StatefulWidget {
  final String title;
  const Songs(this.title, {super.key});

  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  List<Widget> createListOfSongs() {
    List<Music> musicList = Music.getMusic();

    List<Widget> musics =
        musicList.map((Music music) => SongContainer(music)).toList();

    return musics;
  }

  @override
  Widget build(BuildContext context) {
    String title = widget.title;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Column(
              children: createListOfSongs(),
            ),
          ],
        ),
      ),
    );
  }
}
