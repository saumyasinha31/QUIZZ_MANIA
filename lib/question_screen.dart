import 'package:flutter/material.dart';
import 'package:quizz_mania/start_screen.dart';
import 'package:quizz_mania/answer_button.dart';
import 'package:quizz_mania/data/questions.dart';
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex =0;

  void answerQuestion() {

    setState(() {
      currentQuestionIndex++;
    });

  }

  @override
  Widget build(context) {
    final currentQuestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const  EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Text(
              currentQuestions.text,
              textAlign : TextAlign.center,
            ),


              const SizedBox(height: 30),
              ...currentQuestions.getShuffledAnswers().map((answer) {
                return AnswerButton(answerText: answer, onTap: answerQuestion);
              }),

            ],
            ),
      ),
    );
  }
}