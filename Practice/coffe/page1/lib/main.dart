import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State <MyApp> createState() =>  MyAppState();
}

class  MyAppState extends State <MyApp> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Coffee Cafe",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 190, 144, 112),
          ),),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 39, 35, 54),
          leading: IconButton(onPressed: (){},icon:const Icon(Icons.restaurant_menu,color: Color.fromARGB(255, 199, 165, 113),
          size: 35,),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Text("Find the best\nCoffee to your taste",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),),
              ),
              SizedBox(height: 20,),
              Row(
                children:[ Container(
                  width: 300,
                  child: TextField(
                    style:const TextStyle(color: Colors.grey),
                    controller:searchController,
                    decoration: InputDecoration(
                      fillColor:const Color.fromARGB(255, 78, 73, 98),
                      filled: true,
                      hintText: "Find your coffee....",
                      hintStyle:const TextStyle(color: const Color.fromARGB(255, 138, 137, 137)),
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                      
                      prefixIcon: Icon(Icons.search_outlined,color: const Color.fromARGB(255, 138, 137, 137),),
                    ),
                    
                  ),
                  
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color:  Color.fromARGB(255, 190, 144, 112),
                  ),
                  child: Icon(Icons.coffee,color: Colors.white,),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Espresso",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color:  Color.fromARGB(255, 190, 144, 112),
                  ),),
                  Text("Latte",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color:  Colors.white,
                  ),),
                  Text("Cappuccino",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color:  Colors.white,
                  ),),
                  Text("Cafetiere",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color:   Colors.white,
                  ),)
                  
                ],
              ),
              SizedBox(height: 20,),
              //Horizontal coffee
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 180,
                      width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 138, 137, 137),
                      ),
                      child:const Column(
                        children: [
                          //Image.asset(""),
                          SizedBox(height: 10,),
                          const Text("Espresso"),
                          SizedBox(height: 10,),
                          const Text("\$4.20"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ], 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 35, 54),
      ),
    );
  }
}
