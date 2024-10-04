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
          backgroundColor: Color.fromARGB(255, 143, 112, 198),
        ) ,
        body:SingleChildScrollView(
          child: Center(
            child:Row(
              children: [
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
