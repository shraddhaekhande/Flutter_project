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
          title: const Text("Row Demo",
          style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 66, 8, 76),
      ),
    );
  }
}
