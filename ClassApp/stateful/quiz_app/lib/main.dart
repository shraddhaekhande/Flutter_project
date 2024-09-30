import "package:flutter/material.dart";

void main(){

  runApp(const MyApp());
}
class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
  class QuizApp extends StatefulWidget{
    const QuizApp({super.key});
    
    @override
    State createState()=>_QuizAppState();

  }
  class _QuizAppState extends State{
    List<Map> allQuestion = [
      {
        "question":"Who is founder of Java?",
        "Options":["James Gosling","Dennis Ritchie","Bjarne Stroustrup","Guido Rossum"],
        "Answer":0,
      },
       {
        "question":"Who is founder of Python?",
        "Options":["James Gosling","Dennis Ritchie","Bjarne Stroustrup","Guido Rossum"],
        "Answer":3,
      },
       {
        "question":"Who is founder of C?",
        "Options":["James Gosling","Dennis Ritchie","Bjarne Stroustrup","Guido Rossum"],
        "Answer":1,
      },
       {
        "question":"Who is founder of C++?",
        "Options":["James Gosling","Dennis Ritchie","Bjarne Stroustrup","Guido Rossum"],
        "Answer":2,
      },
    ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int score =0;

  void calculateScore() {
    if (selectedAnswerIndex == allQuestion[currentQuestionIndex]["Answer"]) {
      score++;
    }
  }

  void resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswerIndex = -1;
      score = 0;
      questionPage = true;
    });
  }

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex !=-1){

      if(answerIndex == allQuestion[currentQuestionIndex]["Answer"]){

        return const WidgetStatePropertyAll(Colors.green);
      }
      else if(selectedAnswerIndex==answerIndex){
          return const WidgetStatePropertyAll(Colors.red);
      }
      else{
        return const WidgetStatePropertyAll(null);
      }
    }
    else{
      return const WidgetStatePropertyAll(null);
    }
  }
  bool questionPage=true;
  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
  Scaffold isQuestionScreen(){
    
    if(questionPage==true){
      return Scaffold(
        backgroundColor:const Color.fromARGB(255, 238, 199, 241),
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(color:  Colors.amber,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 86, 17, 135),
      ),

      body: Column(
        children: [
         const SizedBox(
            height: 30,
          ),

        Row(
          children: [
            const SizedBox(
              width: 100,
            ),
            Text(
              "Question:${currentQuestionIndex + 1}/${allQuestion.length}",
              style: const TextStyle(
                fontSize:28,
                fontWeight: FontWeight.bold,    
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 50,
        ),

        SizedBox(
          height: 60,
          width: 300,
          child: Text(
            allQuestion[currentQuestionIndex]["question"],
            style:const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.purple,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        //option 1
        SizedBox(
          height: 40,
          width: 300,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(0),
            ),
            onPressed: () {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=0;
                setState(() {
                  
                });
              }
            },
            child: Text(" A. ${allQuestion[currentQuestionIndex]["Options"][0]}",
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            ),
            
          ),
        ),

        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
          width: 300,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(1),
            ),
            onPressed: () {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=1;
                setState(() {
                  
                });
              }
            },
            child: Text("B. ${allQuestion[currentQuestionIndex]["Options"][1]}",
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            ),
            
          ),
        ),

        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
          width: 300,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(2),
            ),
            onPressed: () {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=2;
                setState(() {
                  
                });
              }
            },
            child: Text("    C. ${allQuestion[currentQuestionIndex]["Options"][2]}",
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              
            ),
            ),
            
          ),
        ),

        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
          width: 300,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(3),
            ),
            onPressed: () {
              if(selectedAnswerIndex==-1){
                selectedAnswerIndex=3;
                setState(() {
                  
                });
              }
            },
            child: Text("D. ${allQuestion[currentQuestionIndex]["Options"][3]}",
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            ),
            
          ),
        ),
        ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            
           if (selectedAnswerIndex != -1) {
              calculateScore();
              setState(() {
                if (currentQuestionIndex < allQuestion.length - 1) {
                  currentQuestionIndex++;
                } else {
                  questionPage = false;
                }
                selectedAnswerIndex = -1;
              });
            }
          },
          backgroundColor:const Color.fromARGB(255, 58, 9, 93),
          child: const Icon(
            Icons.forward,
            color: Colors.amber,
          ),
          ),
    );
  }else{
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 199, 241),
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color: Colors.amber,
            ),
          ),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 86, 17, 135),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL_3hVKMeKsBhvxq9dTrueHExtjv7GRqG2ug3aWX-U0moy8bNrmzUrjl9Njm_S6n2nzII&usqp=CAU",
                height: 300,
                ),
                const SizedBox(height: 30,),
                const Text(
                  "Congratulation",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
                 const SizedBox(height: 30),
              Text(
                "Score: $score/${allQuestion.length}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: resetQuiz,
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color.fromARGB(255, 86, 17, 135),
                ),
                child: const Text(
                  "Restart Quiz",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
          
        ),
        
    );
  }
  }
  }