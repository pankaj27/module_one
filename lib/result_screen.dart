import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_one/question_summery/question_summery.dart';

import 'data/questions.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.chosenAnswer, required this.onRestart});

  final List<String> chosenAnswer ;
  final void Function() onRestart;

  List<Map<String, Object>> getsummeryData(){
    final List<Map<String, Object>> summery = [];

    for(var i= 0; i< chosenAnswer.length; i++){
      summery.add({
        'question_index':i,
        'question': question[i].text,
        'correct_answer':question[i].answers[0],
        'user_answer': chosenAnswer[i]
      });

    }
    return summery ;
  }

  @override
  Widget build(BuildContext context) {
    final summerdata = getsummeryData();
    final totalQuestion = question.length;
    final correctanser = summerdata.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;
      return SizedBox(
        child: Container(
          margin: const EdgeInsets.all(40),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You answered $correctanser of $totalQuestion question correctly!',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 230, 200, 253),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,),
              const SizedBox(height: 30,),
              QuestionSummery(getsummeryData()),
              const SizedBox(height: 30,),
              TextButton.icon(
                  onPressed: onRestart,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.refresh),
                  label: const Text('Restart Quiz!'),
                )
            ],

          ),

        )
      );
  }
}
