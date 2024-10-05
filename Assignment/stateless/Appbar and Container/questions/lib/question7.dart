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
          title: const Text("Images",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Row(
              children: [
                Container(
                  child:Image.network("https://images.pexels.com/photos/3354648/pexels-photo-3354648.jpeg?auto=compress&cs=tinysrgb&w=600",
                height: 400,
                width: 300,
                ),
                ),
                const SizedBox(width: 20,),
                Container(
                  child:Image.network("https://images.pexels.com/photos/119435/pexels-photo-119435.jpeg?auto=compress&cs=tinysrgb&w=600",
                height: 400,
                width: 300,
                ),
                ),
                const SizedBox(width: 20,),
                Container(
                  child:Image.network("https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600",
                height: 400,
                width: 300,
                ) ,
                ),
                const SizedBox(width: 20,),
                Container(
                  child:  Image.network("https://images.pexels.com/photos/1335077/pexels-photo-1335077.jpeg?auto=compress&cs=tinysrgb&w=600",
                height: 400,
                width: 300,
                ),
                ),
                const SizedBox(width: 20,),
                Container(
                  child:Image.network("https://images.pexels.com/photos/712618/pexels-photo-712618.jpeg?auto=compress&cs=tinysrgb&w=600",
                height: 400,
                width: 300,
                ) ,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
