import 'package:flutter/material.dart';
import 'package:module_one/question_screen.dart';
import 'package:module_one/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  Widget? activeScreen;


  @override
  initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();


  }

  switchScreen(){
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }
  @override
  Widget build(context){
    return MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}