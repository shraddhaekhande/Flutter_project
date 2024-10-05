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
          title: const Text("space Between",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 65, 130, 199),
          
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            
          ],
        ),
        backgroundColor: Color.fromARGB(255, 189, 103, 178),
      ),
    );
  }
}
