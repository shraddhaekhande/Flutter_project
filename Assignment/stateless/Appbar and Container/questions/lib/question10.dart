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
          title: const Text("Container with Border",
          style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.w500),),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration:const BoxDecoration(
              color: Color.fromARGB(255, 152, 45, 171),
              borderRadius:BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(20),),
              
              ),
          ),
          
        ),
      ),
    );
  }
}
