import 'package:flutter/material.dart';


import 'Your_Child.dart';
import 'dashboard.dart';
import 'profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List list = [const DashBoardScreen(), const Your_Child(), const Profile()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: const Color.fromRGBO(74, 42, 81, 1),
        // showUnselectedLabels: false,
        elevation: 10,
        iconSize: 25.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
         
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromRGBO(74, 42, 81, 1),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.work, color: Color.fromRGBO(74, 42, 81, 1)),
            label: 'Your_Child',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromRGBO(74, 42, 81, 1)),
            label: 'Profile',
          ),
        ],
      ),
      body: list[currentIndex],
    );
  }
}
