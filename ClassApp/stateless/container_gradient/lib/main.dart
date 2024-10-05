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
        appBar: AppBar(
          title: const Text("Column Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.amber,
                  Colors.blue
                ]
              ),
            ),
            child: const Text("Gradient",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
        ),
      ),
    );
  }
}
