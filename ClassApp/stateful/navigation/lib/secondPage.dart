import 'package:flutter/material.dart';
import 'thirdPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                    ),
                );
              },
              child:const Text("Go to Third Page",style: TextStyle(fontWeight: FontWeight.w700),),
              style:const ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 235, 196, 173)) ),
            ),
            
          ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("previous Page",style: TextStyle(fontWeight: FontWeight.w700),),
            style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 243, 206, 182)) ),
            
                    ),
          ),
          
        ],
      ),
    );
  }
}
