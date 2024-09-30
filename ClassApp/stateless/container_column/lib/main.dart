import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          title: const Text("Row Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ],
        ),
        ),
      );
    
  }
}
