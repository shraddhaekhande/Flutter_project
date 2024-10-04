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
          title: const Text("ListView Builder Demo",
            style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 240, 77, 36),
        ),
        body: ListView.builder(
          itemCount: 30,
          physics:const BouncingScrollPhysics(),
          itemBuilder:(BuildContext context,int index){
            return Text(
              "User:$index",
              style:const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            );
          },
        ),
      ),
    );
  }
}
