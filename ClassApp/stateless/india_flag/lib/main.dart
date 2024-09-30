import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("India Flag"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 435,
                width: 8,
                color: Colors.brown,
              ),
              
              Column(
                children: [
                    const SizedBox(
                      height: 145,
                    
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 40,
                    width: 160,
                    color: Colors.white,
                    child: Image.network(
                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSh23Ca0OlVHfoJcIHkEOCKQLZ3u1gNyuTOQ&s"),
                  ),
                  
                  Container(
                    height: 40,
                    width: 160,
                    color: Colors.green,
                  ),
                  
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
