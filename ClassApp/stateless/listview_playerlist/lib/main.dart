import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState()=> _MainAppState();
  
}
class _MainAppState extends State{


  TextEditingController nameController = TextEditingController();
  String? MyName;
  List<String> Playerlist =[];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Player List",
          style: TextStyle(
            fontSize: 30,
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                style:const TextStyle(
                  fontSize: 30,
                ),
                decoration:const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(fontSize: 25,color: Colors.grey),
                  border: OutlineInputBorder(),
                ),
                onChanged: (val) {
                  print("value$val");
                },
                onEditingComplete: () {
                  print("Editing Complete");
                },
                onSubmitted: (value) {
                  print("value submitted $value");
                },
              ),
              
            ),
            const SizedBox(height: 20,),     
            GestureDetector(
              onTap: () {
                print("Add Data");

                MyName = nameController.text.trim();

                print("my name $MyName");

                if(MyName != ""){
                  Playerlist.add(MyName!);
                  nameController.clear();
                  setState(() { });
                }
              },
              child: Container(
                padding:const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("Add Data",style: TextStyle(fontSize: 20,color: Color.fromARGB(242, 250, 248, 248),),),
              ),
              
            ),
            const SizedBox(height: 40,),
            ListView.builder(
              itemCount: Playerlist.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Text("Name: ${Playerlist[index]}",
                style:const TextStyle(
                  fontSize: 25,
                  ),
                  );
              }
              ),
          ],
        ),
      ),
    );
  }
}
