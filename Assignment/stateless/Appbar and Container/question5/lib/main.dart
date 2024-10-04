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
          backgroundColor: Colors.deepPurple,
        ) ,
        body: Center(
          child:Column(
            children: [
              Image.network("https://images.pexels.com/photos/15658607/pexels-photo-15658607/free-photo-of-bunny-figure-in-grass.jpeg?auto=compress&cs=tinysrgb&w=400",
              width: 200,
              height: 200,
              ),
              Image.network("https://images.pexels.com/photos/20028642/pexels-photo-20028642/free-photo-of-photo-of-a-chihuahua-puppy-against-white-background.jpeg?auto=compress&cs=tinysrgb&w=400",
              width: 200,
              height: 200,
              ),

              Image.network("https://images.pexels.com/photos/14927268/pexels-photo-14927268.jpeg?auto=compress&cs=tinysrgb&w=400",
              width: 200,
              height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
