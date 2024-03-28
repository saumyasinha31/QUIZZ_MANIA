import 'package:flutter/material.dart';
import 'package:quizz_mania/question_screen.dart';
import 'package:quizz_mania/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
   return _QuizState();
  }
}
class _QuizState extends State<Quiz>{

  var activeScreen = 'start-screen';

  void switchScreen(){
    setState(() {
      activeScreen= 'questions-screen';
    });
  }
  @override
  Widget build(context){
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(1, 72, 113, 1),
                Color.fromRGBO(215, 237, 226, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}