import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return InfoApp();
  }
}
class InfoApp extends StatefulWidget {
  const InfoApp({super.key});

  @override
  State<InfoApp> createState() => _InfoAppState();
}

class _InfoAppState extends State<InfoApp> {

  TextEditingController nameController = TextEditingController();
  TextEditingController compController = TextEditingController();
  String? Myname;
  String? Mycomp;

  List<Map> retval = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: const Text("Info",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ) ,
        body:Padding(
          padding: const EdgeInsets.all(20.0),
          
          child: Column(
            children: [
              const SizedBox(height: 20,),
              TextField(
                controller: nameController,
                style:const TextStyle(
                  fontSize: 30,
                ),
                decoration:const InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),

              ),

              //company
              const SizedBox(height: 20,),
              TextField(
                controller: compController,
                style:const TextStyle(
                  fontSize: 30,
                ),
                decoration:const InputDecoration(
                  hintText: "Dream Company",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  Myname = nameController.text;
                  Mycomp = compController.text;
                  retval.add(
                    {"name":Myname,"Compney Name":Mycomp},
                  );
                  nameController.clear();
                  compController.clear();
                  setState(() {
                    
                  });
                },
                child: Container(
                  padding:const EdgeInsets.all(10),
                  height: 50,
                  width: 110,
                  decoration:BoxDecoration(
                    color:Color.fromARGB(255, 25, 79, 123),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:const Text("Submit",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 252, 252, 250),
                    fontWeight: FontWeight.w500,
                    ),),
                ),
                
                
              ),
              const SizedBox(height: 20,),
              ListView.builder(
                itemCount: retval.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 200,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 215, 172, 169),
                    ),
                    child: Column(
                      children: [
                        Text("Name:$Myname",
                        style:const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          
                        ),),
                        SizedBox(height: 25,),
                        Text("Company Name:$Mycomp",
                        style:const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          
                        ),
                        ),
                      ]
                      
                    ),
                    
                  );
                },
              ),

              
            ],
          ),
        ) ,
      ),
    );
  }
}