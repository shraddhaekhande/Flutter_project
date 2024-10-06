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
          title: const Text("Aspect Ratio Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            backgroundColor: Colors.cyan,
          ),),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 290,
            width: 200,
            color: Colors.amber,
            child: Image.network("https://images.pexels.com/photos/28652028/pexels-photo-28652028/free-photo-of-traditional-wooden-cabin-in-rural-russia.jpeg?auto=compress&cs=tinysrgb&w=400"),
          ),
        ),
      ),
    );
  }
}
