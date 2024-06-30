import 'package:flutter/material.dart';

void main(List<String> args) {}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[200],
          title: const Text('Home'),
          centerTitle: true,
        ),
        backgroundColor: Colors.amberAccent,
        body: Center(
          child: Container(
            color: Colors.deepOrangeAccent,
            width: 200,
            height: 200,
          ),
        ));
  }
}
