import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return const container();
  }
 
}
class container extends StatefulWidget{

  const container({super.key});
  @override
  State createState() => _container();
}
class _container extends State{
String text1 = "Click me!";
Color color1 = const Color.fromARGB(255, 228, 136, 129);
  void ColorChange(){
    setState(() {
      text1 = "Container Tapped";
      color1 = const Color.fromARGB(255, 128, 185, 231);
    
    });
  }
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Assignment5",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),
            centerTitle: true,
          ),
          body: Center(
            child: GestureDetector(
              onTap: ColorChange,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),),
                  border: Border.all(color:const Color.fromARGB(255, 120, 25, 18),width: 3),
                  color: color1,
                  ),
                child: Text(text1,style:const TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),),
              
              ),
              
            ),
            
          ),
        ),
    );
  }
}
