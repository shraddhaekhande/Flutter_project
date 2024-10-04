import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 
  Widget ActionMovies() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Action Movie",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 450,
                width: 350,
                child: Image.network("https://cdn.wallpapersafari.com/17/18/S9RNe3.jpg"),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 450,
                width: 350,
                child: Image.network("https://images4.alphacoders.com/133/1336451.jpg"),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 450,
                width: 350,
                child: Image.network("https://wallpapercave.com/wp/wp2751453.jpg"),
              ),
            ],
          ),
          
        ),
        //Comedy Movies
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Comedy Movie",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 450,
                  width: 350,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO88qQGaILPGQ8bLgPRRYfG_WKbIUf21hoHg&s"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 450,
                  width: 350,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGlZQv9hhrDYjMHrJTO528qibn0uWOdStQPw&s"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 450,
                  width: 350,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZVJ6rEuvVGKXiwl2uXiNpQceveRInm1SOvw&s"),
                ),
              ],
            ),
            
          ),
        ],
       ),
      ],
    );

  }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 240, 77, 36),
        ),
        body: ListView.builder(
          itemCount: 1, 
          itemBuilder: (context, int index) {
            return ActionMovies(); 
          },
        ),
      ),
    );
  }
}
