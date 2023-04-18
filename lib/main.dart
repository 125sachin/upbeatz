import 'package:emplayer/library/library.dart';
import 'package:emplayer/library/miniplayer.dart';
import 'package:emplayer/search/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:emplayer/home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final _page1 = GlobalKey<NavigatorState>();
  final _page2 = GlobalKey<NavigatorState>();
  final _page3 = GlobalKey<NavigatorState>();
  final _page4 = GlobalKey<NavigatorState>();

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
        body: IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            Navigator(
              key: _page1,
              onGenerateRoute: (route) => MaterialPageRoute(
                settings: route,
                builder: (context) => HomePage(),
              ),
            ),
            Navigator(
              key: _page2,
              onGenerateRoute: (route) => MaterialPageRoute(
                settings: route,
                builder: (context) => SearchTab(),
              ),
            ),
            Navigator(
              key: _page3,
              onGenerateRoute: (route) => MaterialPageRoute(
                settings: route,
                builder: (context) => Library(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MiniPlayer(),
            BottomAppBar(
              clipBehavior: Clip.antiAlias,
              child: BottomNavigationBar(
                backgroundColor: Colors.black,
                selectedItemColor: Colors.green[800],
                iconSize: 30,
                unselectedItemColor: Colors.white,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_rounded), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search_rounded), label: 'Statistics'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.library_music_rounded), label: 'Wallet'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* 

CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(child: HomePage());
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: SearchTab());
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(child: Library());
                },
              );
            default:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(child: HomePage());
                },
              );
          }
        },
      ),
    );

*/