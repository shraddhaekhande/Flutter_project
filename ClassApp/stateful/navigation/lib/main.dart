import 'package:flutter/material.dart';
import 'secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigation App',
      color: Colors.blue,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
                ),
            );
          },
          child: const Text("Go to Second Page",style: TextStyle(fontWeight: FontWeight.w700),),
          style: ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 245, 206, 181)) ),
            
        ),
      ),
    );
  }
}
