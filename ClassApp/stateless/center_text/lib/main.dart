import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(

          child: Text('hey Shraddha',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            backgroundColor: Colors.blue,
          ),
          ),
          
        ),
      ),
    );
  }
}
