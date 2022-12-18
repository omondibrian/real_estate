import 'package:flutter/material.dart';
import 'package:tenants/presentation/screens/explore.dart';
import 'package:tenants/presentation/screens/help.dart';
import 'package:tenants/presentation/screens/profile.dart';
import 'package:tenants/presentation/screens/saved.dart';

class Realtors extends StatefulWidget {
  const Realtors({super.key});

  @override
  State<Realtors> createState() => _RealtorsState();
}

class _RealtorsState extends State<Realtors> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black87,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: "Help",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  static const List<Widget> _screens = <Widget>[
    Explore(),
    SavedScreen(),
    HelpScreen(),
    ProfileScreen()
  ];
}
