// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:appawal/pages/second_page.dart';
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
                  Icons.favorite_border,
                  size: 48,
                ))
              ],
            ),
          ),
        ));
  }
}
