import 'package:appawal/pages/first_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.deepPurple,
              ),
              SizedBox(
                  height:
                      20), // Add some space between the container and the button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstPage(),
                      ));
                },
                child: Text("Back To First Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
