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
        appBar: AppBar(
          title: const Text("AppBar",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.amber,
          ),
          ),
          backgroundColor: const Color.fromARGB(255, 68, 125, 154),
          centerTitle: true,
          toolbarHeight:100,
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )
          ),
        
          actions:const [
            Icon(Icons.search,
            size: 30,),
            SizedBox(width: 30,),
            Icon(Icons.settings,
            size: 30,),
          ],
        ),
      ),
    );
  }
}
