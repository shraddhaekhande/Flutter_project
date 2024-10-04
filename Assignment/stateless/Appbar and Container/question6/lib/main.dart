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
          backgroundColor: Color.fromARGB(255, 143, 112, 198),
        ) ,
        body:SingleChildScrollView(
          child: Center(
            child:Column(
              children: [
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.lightGreen,
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 86, 81, 230),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 234, 234, 51),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 25, 138, 153),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 236, 135, 41),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 231, 231, 4),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 224, 68, 24),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 8, 4, 124),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 196, 88, 167),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 22, 164, 6),
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
