// import 'package:emplayer/account/account_page.dart';
// import 'package:emplayer/library/library.dart';
// import 'package:emplayer/main.dart';
// import 'package:emplayer/search/searchPage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class NavBar extends StatefulWidget {
//   final int currentScreenIndex;
//   const NavBar(this.currentScreenIndex, {super.key});

//   @override
//   State<NavBar> createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   @override
//   Widget build(BuildContext context) {
//     int currentScreenIndex = widget.currentScreenIndex;
//     // return CupertinoTabScaffold(
//     //   tabBar: CupertinoTabBar(
//     //     items: <BottomNavigationBarItem>[
//     //       BottomNavigationBarItem(
//     //       icon: Icon(Icons.home_rounded),
//     //       label: "Home",
//     //       backgroundColor: Colors.black,
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.search_rounded),
//     //       label: "Search",
//     //       backgroundColor: Colors.black,
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.library_music_rounded),
//     //       label: "Library",
//     //       backgroundColor: Colors.black,
//     //     ),
//     //     ],
//     //   ),
//     //   tabBuilder: (context, index) {
//     //     switch (index) {
//     //       case 0:
//     //         return CupertinoTabView(builder: (context) {
//     //           return CupertinoPageScaffold(child: SearchScreen());
//     //         });
//     //         break;
//     //       case 1:
//     //         return CupertinoTabView(builder: (context) {
//     //           return CupertinoPageScaffold(child: AccountScreen());
//     //         });
//     //         break;
//     //       case 2:
//     //         return CupertinoTabView(builder: (context) {
//     //           return CupertinoPageScaffold(child: AccountScreen());
//     //         });
//     //         break;
//     //       default:
//     //         return const CupertinoTabView();
//     //     }
//     //   },
//     // );

//     //  BottomNavigationBar(
//     //   currentIndex: currentScreenIndex,
//     //   backgroundColor: Colors.black,
//     //   selectedItemColor: Colors.green[800],
//     //   iconSize: 30,
//     //   unselectedItemColor: Colors.white,
//     //   showSelectedLabels: false,
//     //   showUnselectedLabels: false,
//     //   onTap: (value) => {
//     //     currentScreenIndex = value,
//     //     setState(() {}),
//     //   },
//     //   items: const [
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.home_rounded),
//     //       label: "Home",
//     //       backgroundColor: Colors.black,
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.search_rounded),
//     //       label: "Search",
//     //       backgroundColor: Colors.black,
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.library_music_rounded),
//     //       label: "Library",
//     //       backgroundColor: Colors.black,
//     //     ),
//     //   ],
//     // );
//   }
// }
