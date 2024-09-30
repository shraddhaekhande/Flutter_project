import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget{

  const ToggleColor({super.key});

  @override
  State<ToggleColor> createState() => _ToggleColorState();
}
class _ToggleColorState extends State<ToggleColor>{
  bool changeColor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle color"),
          centerTitle: true,
          backgroundColor: changeColor? Color.fromARGB(255, 62, 204, 73):const Color.fromARGB(255, 68, 154, 225),
        ),
        body:Center(
          child:Container(
            height: 200,
            width: 200,
              color: changeColor? Colors.red:Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(changeColor==true){
              changeColor=false;
            }
            else{
              changeColor=true;
            }
            setState(() {
              
            });
          },
          backgroundColor: Colors.blue,
          child: const Text("Toggle"),
        ),
      ),
    );
  }
}
