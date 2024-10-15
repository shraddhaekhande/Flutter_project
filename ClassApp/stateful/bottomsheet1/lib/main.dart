import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomSheet(),
    );
  }
}

class BottomSheet extends StatefulWidget {
  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
TextEditingController nameController = TextEditingController();
String? name;
  
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            const Text("BottomSheet",
            style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w600),),
            Container(
              height: 200,
              child: TextField(
                controller:nameController ,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:const BorderSide(
                      width: 2,
                    )
                  ),
                ),
              ),
              
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                name = nameController.text;
                nameController.clear();
              });
            }, 
            
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text("Submit",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),),
            ),

            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Bottom Sheet'),
      ),
      body:const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("BottomSheet"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showBottomSheet(context),
        child:const Icon(Icons.add),
      ),
    );
  }
}