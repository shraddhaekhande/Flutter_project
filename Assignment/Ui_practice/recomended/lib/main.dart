import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State <MainApp> createState() =>_MainAppState();
}

class _MainAppState extends State <MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Recomended",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(0, 91, 135, 3,
            ),
            ),
        ),
        leading: IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_left,size: 35,), ),
        centerTitle: true,
        
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1,
              width: 600,
              color: const Color.fromARGB(255, 87, 86, 86),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                
                child:const Text("Start a new career",
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),),
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                ElevatedButton(onPressed:(){}, 
                style:const ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromRGBO(0, 91, 135, 3))),
                child: const Text("Data Science",
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                ),),
                ),
                
                ElevatedButton(onPressed:(){}, 
                style:const ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromRGBO(199, 217, 226, 0.988))),
                child: const Text("Machine Learning",
                style: TextStyle(
                color: (Color.fromRGBO(0, 91, 135, 3)),
                fontWeight: FontWeight.w600,
                ),),
                ),
        
                ElevatedButton(onPressed:(){}, 
                style:const ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color.fromRGBO(199, 217, 226, 0.988))),
                child: const Text("Apache Spark",
                style: TextStyle(
                color: (Color.fromRGBO(0, 91, 135, 3)),
                fontWeight: FontWeight.w600,
                ),),
                ),
        
              ],
            ),
            
            //container 1
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
               
                height: 160,
                width: 800,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 239, 238, 238),
                ),
        
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child:Image.network("data:image/jpeg;base64,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",
                      width: 150,
                      
                      ),
                      ),
                      
        
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("Data Science",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),),
                            ),
                            Container(
                              child: const Text("Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 97, 97, 97),
                              ),),
                            ),
        
                            Container(
                              child: const Text("Lorem ipsum dolor sit amet eget\nnunc dictum est pennatibus nunc",
                              style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 4, 4, 4),
                            ),),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 90,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Data Science",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 120,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Machine Learning",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
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
            ),
           //container 2
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
               
                height: 160,
                width: 800,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 239, 238, 238),
                ),
        
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child:Image.network("data:image/jpeg;base64,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",
                      width: 150,
                      
                      ),
                      ),
                      
        
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("AI & ML",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),),
                            ),
                            Container(
                              child: const Text("Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 97, 97, 97),
                              ),),
                            ),
        
                            Container(
                              child: const Text("Lorem ipsum dolor sit amet eget\nnunc dictum est pennatibus nunc",
                              style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 4, 4, 4),
                            ),),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 120,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Machine Learning",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 100,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Decision Tree",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
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
            ),
            //container 3
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
               
                height: 160,
                width: 800,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 239, 238, 238),
                ),
        
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child:Image.network("data:image/jpeg;base64,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",
                      width: 150,
                      
                      ),
                      ),
                      
        
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("Big Data",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),),
                            ),
                            Container(
                              child: const Text("Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 97, 97, 97),
                              ),),
                            ),
        
                            Container(
                              child: const Text("Lorem ipsum dolor sit amet eget\nnunc dictum est pennatibus nunc",
                              style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 4, 4, 4),
                            ),),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 70,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Big Data",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 100,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Apache Spark",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
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
            ),
            //container 4
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
               
                height: 160,
                width: 800,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 239, 238, 238),
                ),
        
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child:Image.network("data:image/jpeg;base64,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",
                      width: 150,
                      
                      ),
                      ),
                      
        
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text("Devops",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),),
                            ),
                            Container(
                              child: const Text("Harvard University",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 97, 97, 97),
                              ),),
                            ),
        
                            Container(
                              child: const Text("Lorem ipsum dolor sit amet eget\nnunc dictum est pennatibus nunc",
                              style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 4, 4, 4),
                            ),),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 70,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Docker",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(6.0),
                                  height: 30,
                                  width: 90,
                
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color:(Color.fromRGBO(182, 207, 220, 0.98)),
                                    
                                  ),
                                  child: const Text("Kubernetes",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: (Color.fromRGBO(0, 91, 135, 3)),
                                  ),),
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
            ),
          ],
        ),
      ),
      ),
    );
  }
}

