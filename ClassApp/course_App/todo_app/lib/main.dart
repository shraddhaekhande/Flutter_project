import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}
  class TodoApp extends StatefulWidget{
    const TodoApp({super.key});
    
    @override
    State createState()=>_TodoAppState();

  }
  class _TodoAppState extends State{

    List<Color> colors = [
      
       const Color.fromARGB(255, 223, 232, 125),
       const Color.fromARGB(255, 228, 165, 165),
       const Color.fromARGB(255, 188, 169, 230),
       const Color.fromARGB(255, 175, 236, 168),
        
      
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("To-do list",style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            
          ),),
          leadingWidth: 360,
          toolbarHeight: 80,
          
          backgroundColor: Color.fromRGBO(18, 141, 120, 1),
        ),
        body: ListView.builder(
         itemCount: 8,
         itemBuilder: (context, index) {
          Color containercolor = colors[index % colors.length];
           return Padding(
             padding: const EdgeInsets.all(15.0),
             child: Container(
              padding: const EdgeInsets.all(15.0),
              height: 200,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: containercolor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: Positioned(bottom:-50,
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration:const BoxDecoration(shape: BoxShape.circle,
                          color: Colors.white,
                          
                          ),
                          child: Icon(Icons.image_sharp,size: 30,color: Colors.grey,),
                          
                        ),
                        
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(" Lorem Ipsum is simply setting industry.",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                          
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text("Simply dummy text of the printing and typesetting\nindustry Lorem inpsum has been the indusrty\nstandard dummy text ever since the 1500s",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                            ),),
                          ),
                          
                          
                        ],
                      ),
                    ],
                  ),
                  Container(
                            
                            child:const Row(
                              children: [
                                Text("10 July 2023"),
                                SizedBox(width: 300,),
                                Icon(Icons.edit_outlined,color: Color.fromRGBO(6, 124, 105, 1),),
                                SizedBox(width: 10,),
                                Icon(Icons.delete_outline,color: Color.fromRGBO(6, 124, 105, 1),),
                              ],
                            ),
                            
                          ),
                ],
              ),
             ),
           );
         },
         ),
      ),
    );
  }
}
