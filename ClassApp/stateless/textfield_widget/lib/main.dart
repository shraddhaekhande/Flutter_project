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

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextField Demo",
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
            Padding(padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: nameController,
              style: const TextStyle(
                fontSize: 30,
              ),
              obscureText: true,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                hintText: "Password",
                hintStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
              onChanged: (String val) {
                print("value$val");
              },
              onEditingComplete: () {
                print("Editing complete");
              },
              onSubmitted: (value) {
                print("value submitted");
              },
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print("Add Data");
                MyName = nameController.text;
                print("MyName: $MyName");
                nameController.clear();
                setState(() { });
                
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
                child: const Text("Add Data",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Text("Name: $MyName",
            style:const TextStyle(
              fontSize: 20,
            ),),
          ],
        ),
      ),
    );
  }
}