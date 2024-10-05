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
        appBar:AppBar(
          title: const Text("Hello Core2Web",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            
          ),
          ),
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 137, 120, 166),
        ) ,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              const SizedBox(width: 30,),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ],
          ),
        )
      ),
    );
  }
}
