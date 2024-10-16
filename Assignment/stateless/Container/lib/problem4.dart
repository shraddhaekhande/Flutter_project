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
          title: const Text("Assignment3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              borderRadius:const BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              border: Border.all(color: const Color.fromARGB(255, 152, 35, 27),width: 3),
              color:Color.fromARGB(255, 236, 182, 178),
              ),
            child: const Text("Shraddha",style: TextStyle(fontWeight: FontWeight.w700),),
          ),
        ),
      ),
    );
  }
}
