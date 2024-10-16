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
          title: const Text("Assignment1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.red,width: 5),
              ),
              child: const Text("Container",style: TextStyle(fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
