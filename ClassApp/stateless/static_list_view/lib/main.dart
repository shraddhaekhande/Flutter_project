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
        title: const Text("ListView Demo",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 106, 9),
       ),

       body: ListView(

        children: [
          Column(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgPuf3YNxUpFv69RoMB8W7H15HMmOv1U5ue7E062qwaEWST_iwZGgRlIWem6jGrxoc2UQ&usqp=CAU",
                  height: 300,
                  width: 300,
                  ),
              const Row(
                children: [
                  
                  Text("khup bhari",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.favorite,
                  color: Colors.red,
                  size: 30,
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.bookmark,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 30,
                  ),
                ],
              ),
            ],
          ),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsutromat24Jcl3gl0d6JNXVCbp9MnFCM41A&s"),
          const Row(
                children: [
                  
                  Text("Mast",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.favorite,
                  color: Colors.red,
                  size: 30,
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.bookmark,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 30,),

              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOk3U6lzFX-z3CqyT_zYqYC-_dIyxrFJGI3Q&s"),
          const Row(
                children: [
                  
                  Text("Mast",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.favorite,
                  color: Colors.red,
                  size: 30,
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.bookmark,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 30,),

              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi9j8R3KCi_7jOy6EMVYbzP5xhqk3Ss47mC6VeGI8dJLwUOnAIGj3EIGAUb2WnUBopOLs&usqp=CAU"),
          const Row(
                children: [
                  
                  Text("Wahha",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.favorite,
                  color: Colors.red,
                  size: 30,
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.bookmark,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 30,
                  ),

                ],
              ),
              const SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
                  
            },
            child: Container(
              height: 50,
              color: Colors.amber,
              child:const Text("Press Me",
              style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ) ,),
            ),
          ),
            
          
        ],
       ),
      ),
    );
  }
}
