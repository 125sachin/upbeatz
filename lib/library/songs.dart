import 'package:emplayer/library/songcontain.dart';
import 'package:flutter/material.dart';
import 'package:emplayer/Models/music.dart';

import '../home/homepage.dart';
import '../search/searchPage.dart';
import 'library.dart';

class Songs extends StatefulWidget {
  final String title;
  const Songs(this.title, {super.key});

  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  final screens = [const HomePage(), SearchTab(), const Library()];
  int currentScreenIndex = 0;

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
    )
        // bottomNavigationBar: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     MiniPlayer(),
        //     BottomNavigationBar(
        //       currentIndex: currentScreenIndex,
        //       backgroundColor: Colors.black,
        //       selectedItemColor: Colors.green[800],
        //       iconSize: 30,
        //       unselectedItemColor: Colors.white,
        //       showSelectedLabels: false,
        //       showUnselectedLabels: false,
        //       onTap: (value) => {
        //         currentScreenIndex = value,
        //         setState(() {}),
        //       },
        //       items: const [
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.home_rounded),
        //           label: "Home",
        //           backgroundColor: Colors.black,
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.search_rounded),
        //           label: "Search",
        //           backgroundColor: Colors.black,
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.library_music_rounded),
        //           label: "Library",
        //           backgroundColor: Colors.black,
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        ;
  }
}
