import 'package:flutter/material.dart';
import 'package:module_one/question_screen.dart';
import 'package:module_one/start_screen.dart';
import 'package:module_one/result_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{

  var activeScreen = 'start-screen';
 List<String> selectedAnswer= [];






 void chooseAnswer(String answer){
   selectedAnswer.add(answer);

   if (selectedAnswer.length == question.length) {
     setState(() {
       //selectedAnswer = [];
       activeScreen = 'result-screen';
     });
   }
 }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }


  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(
        onselectedAnswer: chooseAnswer,
      );
    }

    if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(chosenAnswer: selectedAnswer,onRestart:restartQuiz , );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors:[
                  Colors.deepPurple,
                  Colors.deepPurpleAccent
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),

          ) ,
          child: screenWidget,
        ),
      ),
    );
  }
}