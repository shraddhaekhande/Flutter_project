import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State <MainApp> createState() =>  MainAppState();
}

class  MainAppState extends State< MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aspect Image",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            backgroundColor: Colors.cyan,
          ),),
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset("assets/nature_image.jpg",),
        ),
      ),
    );
  }
}
