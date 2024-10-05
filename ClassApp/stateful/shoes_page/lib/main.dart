import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App1();
  }
}
class App1 extends StatefulWidget{
  const App1({super.key});

  @override
  State createState()=>_App1();
}
class _App1 extends State{
  int quality = 1;

  void increse(){
    setState(() {
      quality++;
    });
  }
  void decrese(){
    setState(() {
      if(quality>1){
        quality--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shoes",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.purple,
          ),
          ),
          actions:const [
            Icon(Icons.shopping_cart,
            size: 30,
            color: Colors.purple,
            ),
          ],
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.network("https://png.pngtree.com/thumb_back/fh260/background/20230702/pngtree-colorful-exercise-equipment-and-running-shoes-surrounded-by-vibrant-balls-on-image_3746850.jpg",
                height: 400,
                width: 600,
                fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(padding: EdgeInsets.only(right: 300),
              child: const Text("Nike Air Force 1'07",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              ),
              ),
              
              
              const SizedBox(height: 20,),
              Row(
                children: [
                 const Padding(padding: EdgeInsets.only(left: 16), ),
                  ElevatedButton(onPressed: (){
          
                  }, 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child:const Text(
                    "SHOES",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                      ),
                      ),
                      const SizedBox(width: 20,),
                      ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                       child: const Text("FOOTWARE",
                       style: TextStyle(
                        fontSize: 16,
                      fontWeight: FontWeight.w400,
                        color: Colors.white,
                       ),),),
                ],
              ),
              const SizedBox(height: 30,),
              const Padding(padding: EdgeInsets.only(left: 16), 
              
              child:  Text("Purple works harmoniously with silver, gold, and even teal, offering a luxurious touch. Exploring the color wheel, you'll find that indigo color schemes complement purple beautifully."),
              ),
              
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 16),),
                  Container(
                    child: const Text("Quality: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                  ),
                  GestureDetector(
                    onTap:decrese,
                    child:Container(
                      padding:const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(color:Colors.grey ,
                      borderRadius: BorderRadius.circular(8.0)
                      ),
                      child:const Text('-',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
                    ),
                    
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("$quality",
                    style:const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),
                  GestureDetector(
                    onTap:increse,
                    child:Container(
                      padding:const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(color:Colors.grey ,
                      borderRadius: BorderRadius.circular(8.0)
                      ),
                      child:const Text('+',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              Center(
                child:ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.purple,minimumSize:const Size(300, 50)),
                      
                      child: const Text("PURCHAES",
                      style: TextStyle(
                        fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                       ),
                       ),
                       
                       ) ,
                       
              ),
              const SizedBox(height: 20,),        
          
            ],
          ),
        ),
      ),
    );
  }
}