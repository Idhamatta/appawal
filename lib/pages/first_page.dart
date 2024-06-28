import 'package:flutter/material.dart';

void main() {}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          appBar: AppBar(
            title: const Text("Home"),
            backgroundColor: Colors.purple[200],
            centerTitle: true,
          ),
          body: Center(
              child: ElevatedButton(
            child: Text('Klik to go to second page'),
            onPressed: () {},
          )),
        ));
  }
}
