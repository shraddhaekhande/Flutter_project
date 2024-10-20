import 'package:flutter/material.dart';
import 'package:todo_app/Todo_Model.dart';
import 'package:intl/intl.dart';


class TodoApp extends StatefulWidget{
    const TodoApp({super.key});
    
    @override
    State createState()=>_TodoAppState();

  }
  class _TodoAppState extends State{

    void clearControllers(){
      titleController.clear();
      desController.clear();
      dateController.clear();
    }

    TextEditingController titleController = TextEditingController();
    TextEditingController desController = TextEditingController();
    TextEditingController dateController = TextEditingController();
  

    List<Todomodel> todocads = [
       ];

    List<Color> colors = [
      
       Color.fromARGB(255, 163, 163, 225),
       const Color.fromARGB(255, 228, 165, 165),
       const Color.fromARGB(255, 188, 169, 230),
       const Color.fromARGB(255, 175, 236, 168),
       
    ];
    void submit(bool doedit,[Todomodel? todoobj]){
      if(titleController.text.trim().isNotEmpty && desController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
        if(doedit){
          todoobj!.title = titleController.text;
          todoobj.description = desController.text;
          todoobj.date = dateController.text;
        }
        else{
          todocads.add(
            Todomodel(title: titleController.text, description: desController.text, date: dateController.text),
          );
        }
      }
      Navigator.of(context).pop();
      clearControllers();
      setState(() {
        
      });
    }
    void showbottomsheet(bool doedit,[Todomodel? todoobj]){
      showModalBottomSheet(
        context: context,
        builder: (context){
          return Padding(
            padding:EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 12,
              right: 12,
              left: 12,
            ), 
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create Todo",
                    style:TextStyle(fontSize: 24,
                    fontWeight: FontWeight.w600),
                    )
                  ],
                ),

               const Text("Title",
               style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 139, 148, 1),
               ),
               ),

               TextField(
                controller: titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    )
                  )
                ),
               ),

               const SizedBox(height: 20,),

               const Text("Description",
               style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 139, 148, 1),
               ),
               ),
               TextField(
                controller: desController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    )
                  )
                ),
               ),

               const SizedBox(height: 20,),

               const Text("Date",
               style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 139, 148, 1),
               ),
               ),
               TextField(
                controller: dateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1)
                    ),
                  ),
                  suffixIcon: const Icon(Icons.calendar_month_outlined,),
                  
                ),
                  onTap: () async {
                  DateTime? pickdate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(), 
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );

                    String formattedDate = DateFormat.yMMMd().format(pickdate!);
                    setState(() {
                     
                      dateController.text= formattedDate; 
                    });
                }, 
                
               ),
               const SizedBox(height: 20,),
               Center(
                
                child: Container(
                  height: 45,
                  width: 130,
                 
                  child: ElevatedButton(onPressed: (){
                  if(doedit ==true){
                    submit(true,todoobj);
                  }else{
                    submit(false);
                  }

                }, 
                style:const ButtonStyle(
                  backgroundColor:WidgetStatePropertyAll(Color.fromRGBO(0, 139, 148, 1),) ,
                  
                ),
                child: const Text("Submit",
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white),
                
                ),
                ),
                ),
               ),
               SizedBox(height: 10,),
              ],
              ),
            );

        }
      );
    }

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
         itemCount: todocads.length,
         itemBuilder: (context, index) {
          Color containercolor = colors[index % colors.length];

           return Padding(
             padding: const EdgeInsets.all(15.0),
             child: Container(
              padding: const EdgeInsets.all(15.0),
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
                            child: Text(todocads[index].title,
                            style:const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                          
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(todocads[index].description,
                            style:const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                            ),),
                          ),
                          
                          
                        ],
                      ),
                    ],
                  ),
                  Container(
                            
                            child:Row(
                              children: [
                                Text(todocads[index].date),
                                const SizedBox(width: 260,),
                                GestureDetector(
                                  onTap: () {
                                    titleController.text = todocads[index].title;
                                    desController.text = todocads[index].description;
                                    dateController.text = todocads[index].date;
                                    showbottomsheet(true,todocads[index]);
                                    setState(() {
                                      
                                    });
                                  },
                                  child: const Icon(Icons.edit_outlined,color: Color.fromRGBO(6, 124, 105, 1),),
                                ),
                                const SizedBox(width: 10,),
                                GestureDetector(
                                  onTap: () {
                                    todocads.remove(todocads[index]);
                                    setState(() {
                                      
                                    });
                                  },
                                  child:  Icon(Icons.delete_outline,color: Color.fromRGBO(6, 124, 105, 1),),
                                )
                              ],
                            ),
                            
                          ),
                ],
              ),
             ),
           );
         },
         ),
         floatingActionButton: FloatingActionButton(onPressed: (
         ){
            showbottomsheet(false);
         },
         child: Icon(Icons.add),
      ),),
    );
  }
}
