import 'package:emplayer/library_page/library.dart';
import 'package:emplayer/search_page/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:emplayer/home_page/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Screens = [HomePage(), SearchTab(), Library()];
  int currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        extendBody: true,
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurpleAccent.shade400,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.01, 0.4],
              ),
            ),
            child: Screens[currentScreenIndex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentScreenIndex,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.green[800],
          iconSize: 30,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) => {
            currentScreenIndex = value,
            setState(() {}),
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: "Search",
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music_rounded),
              label: "Library",
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
