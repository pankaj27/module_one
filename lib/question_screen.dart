import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:module_one/common_widget/answer_button.dart';

import 'package:module_one/data/questions.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key, required this.onselectedAnswer});
  final void Function(String answer) onselectedAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}
class _QuestionScreenState extends State<QuestionScreen>{
  int currentQuestionIndex= 0;
  void answerQuestion(String selectedAnswer){
    widget.onselectedAnswer(selectedAnswer);
    setState(() {

      currentQuestionIndex = currentQuestionIndex + 1 ;

    });
  }


  @override
  Widget build(context) {


    final currentQuestion = question[currentQuestionIndex];
    //print(currentQuestionIndex);
    return SizedBox(
      width:double.infinity ,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children:
          [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color:Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold

              ),
              textAlign: TextAlign.center,

            ),
            const SizedBox(height: 30,),
            ...currentQuestion.getSuffleAnswer().map((item){
              return AnswerButton(
                  answertext: item,
                  onTap: (){
                    answerQuestion(item);

                  }
              );
            }),


          ]
      )
      ),
    );

  }
}
