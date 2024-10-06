import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          title: const Text("My Cart",
          
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.purple,
            
          ),
          ),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),
          
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 1,
              width: 600,
              color: Colors.grey,
              
            ),

            const SizedBox(height: 20,),
            Container(
              
              height: 150,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 230, 208, 208),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network("data:image/jpeg;base64,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",
                    height: 80,
                    width: 100,
                    fit: BoxFit.cover,
                    ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Container(
                            child:const Text("Nike Shoes",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            child: const Text("with iconic style and legendary comfprt,on repeat."),
                          ),
                          const SizedBox(height:10 ,),
                          Row(
  
                            children: [
                             const Text("\$570.00",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                              const SizedBox(width: 150,),
                              Row(
                                children: [
                                  //const Icon(Icons.remove),
                                  IconButton(
                                    icon:const Icon(Icons.remove),
                                    onPressed: decrese,
                                  ),
                                 
                                  const SizedBox(width: 10,),
                                  Container(
                                    height: 20,
                                    width: 25,
                                    
                                    decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.blue),
                                    borderRadius: BorderRadius.circular(2)),
                                    child: Text("$quality"),
                                  ),
                                  const SizedBox(width: 10,),
                                  IconButton(
                                    icon:const Icon(Icons.add),
                                    onPressed: increse,
                                  ),
                      
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 150,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color:const Color.fromARGB(255, 230, 208, 208),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtazsELp-8d5IQVekfl-J-uCtCIOwgYQgcDg&s",
                    height: 80,
                    width: 100,
                    fit: BoxFit.cover,
                    ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Container(
                            child:const Text("Nike Shoes",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            child: const Text("with iconic style and legendary comfprt,on repeat."),
                          ),
                          const SizedBox(height:10 ,),
                          Row(
  
                            children: [
                             const Text("\$77.00",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                              const SizedBox(width: 160,),
                              Row(
                                children: [
                                  //const Icon(Icons.remove),
                                  IconButton(
                                    icon:const Icon(Icons.remove),
                                    onPressed: decrese,
                                  ),
                                 
                                  const SizedBox(width: 10,),
                                  Container(
                                    height: 20,
                                    width: 25,
                                    
                                    decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.blue),
                                    borderRadius: BorderRadius.circular(2)),
                                    child: Text("$quality"),
                                  ),
                                  const SizedBox(width: 10,),
                                  IconButton(
                                    icon:const Icon(Icons.add),
                                    onPressed: increse,
                                  ),
                      
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 150,),
            Spacer(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                     Text("SubTotal: ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                     SizedBox(width: 300,),
                     Text("\$800.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                     Text("Delivery : ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                     SizedBox(width: 300,),
                     Text("\$5.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                     Text("Discount: ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                     SizedBox(width: 300,),
                     Text("40%",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              
                ],
              ),
            ),
            const SizedBox(height: 20,),
              Center(
                child:ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 77, 50, 187),minimumSize:const Size(300, 50)),
                      
                      child: const Text("Checkout for \$480.00",
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
    );  
  }
}    