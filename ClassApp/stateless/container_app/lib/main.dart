import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar:AppBar(
          title: const Text("container App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ) ,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
                child: const Text("pink"),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
                child: const Text("green"),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orangeAccent,
                child: const Text("orange"),
              ),
            ],
          ),
        ),
        ),
    );
  }
}
