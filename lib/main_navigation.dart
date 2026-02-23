import 'package:flutter/material.dart';
import 'package:kwik/screens/homepage.dart';
import 'package:kwik/screens/mail.dart';
import 'package:kwik/screens/profile.dart';
import 'package:kwik/screens/search.dart';


class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screen = [
    const Homepage(),
    const Search(),
    const Mail(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: 
        const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.mail_lock_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline)),
        ],
        type: BottomNavigationBarType.shifting,
        selectedIconTheme: IconThemeData(fill: 2.5),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}