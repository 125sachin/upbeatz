import 'package:emplayer/account_page/account_page.dart';
import 'package:emplayer/library_page/library.dart';
import 'package:emplayer/main.dart';
import 'package:emplayer/search_page/searchPage.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [],
    );
  }
}
