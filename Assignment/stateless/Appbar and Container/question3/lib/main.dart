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
          title: const Text("Hello Core2Web",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            
          ),
          ),
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ) ,
        body: Center(
          child: Container(
            height: 200,
            width: 360,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
