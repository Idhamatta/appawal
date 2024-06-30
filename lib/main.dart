// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:appawal/pages/first_page.dart';
import 'package:appawal/pages/home_page.dart';
import 'package:appawal/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
