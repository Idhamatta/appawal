// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:appawal/pages/home_page.dart';
import 'package:appawal/pages/profile_page.dart';
import 'package:appawal/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {}

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
// this keeps track the current page to display
  int _selectedIndex = 0;

// this method updates the new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// the pages we have in our app
  final List _pages = [
    // homepage
    HomePage(),

    // profilepage
    ProfilePage(),

    // settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rodrik App'),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            //Common to place a drawer header here
            DrawerHeader(
              child: Icon(
                Icons.account_box_rounded,
                size: 48,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                //pop drawer first
                Navigator.pop(context);
                //Go to Home Page
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profilepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo_rounded),
              title: Text('add photo'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            // home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
          ]),
    );
  }
}
