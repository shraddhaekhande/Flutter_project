import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: const Text("AppBar1",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
          toolbarHeight: 100,
          backgroundColor:Colors.amber,
          actions: const[
            Icon(Icons.search,
            size: 30,),
            SizedBox(width: 30,),
            Icon(Icons.settings,
            size: 30,),
          ],
        ) ,
      ),
    );
  }
}
