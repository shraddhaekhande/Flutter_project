import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("previous Page",style: TextStyle(fontWeight: FontWeight.w700),),
          style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 245, 202, 175)) ),
            
        ),
      ),
    );
  }
}
