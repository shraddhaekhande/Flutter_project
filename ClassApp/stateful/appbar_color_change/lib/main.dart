import 'package:flutter/material.dart';

void main() {
  runApp(const AppbarColor());
}
class AppbarColor extends StatefulWidget {
  const AppbarColor({super.key});

  @override
  State<AppbarColor> createState() => _AppbarColorState();
}

class _AppbarColorState extends State<AppbarColor> {
  bool colorchange = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar Color App"),
          centerTitle: true,
          backgroundColor: (colorchange)? Colors.amber:Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("change Appbar Color"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(colorchange){
              colorchange=false;
            }
            else{
              colorchange=true;
            }
            setState(() {
              
            });
          },
          child: const Icon(Icons.add),
      ),
    ),
    );
  }
}
