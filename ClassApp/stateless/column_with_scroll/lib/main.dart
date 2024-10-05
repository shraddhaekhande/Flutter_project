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
          title: const Text("Column Scroll View",
          style: TextStyle(
            fontFamily: AutofillHints.birthday,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://images.pexels.com/photos/1767434/pexels-photo-1767434.jpeg?auto=compress&cs=tinysrgb&w=600"),
              Container(
                height: 100,
                width: 180,
                color: Colors.amber,
              ),
              Image.network("https://images.pexels.com/photos/163036/mario-luigi-yoschi-figures-163036.jpeg?auto=compress&cs=tinysrgb&w=600"),
              Container(
                height: 100,
                width: 180,
                color: Colors.amber,
              ),
              Image.network("https://images.pexels.com/photos/207891/pexels-photo-207891.jpeg?auto=compress&cs=tinysrgb&w=600"),
              Container(
                height: 100,
                width: 180,
                color: Colors.amber,
              ),
              Image.network("https://images.pexels.com/photos/164859/pexels-photo-164859.jpeg?auto=compress&cs=tinysrgb&w=600"),
              Container(
                height: 100,
                width: 180,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
