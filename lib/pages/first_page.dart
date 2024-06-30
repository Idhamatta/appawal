// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            centerTitle: true,
          ),
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
                    Navigator.pushNamed(context, '/homepage');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text('wallet'),
                ),
                ListTile(
                  leading: Icon(Icons.add_a_photo_rounded),
                  title: Text('add photo'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                )
              ],
            ),
          ),
        ));
  }
}
