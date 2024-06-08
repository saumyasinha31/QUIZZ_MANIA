import 'package:flutter/material.dart';
import 'package:quizz_mania/question_screen.dart';
import 'package:quizz_mania/start_screen.dart';
import 'package:quizz_mania/data/questions.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
   return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen(){
    setState(() {
      activeScreen= 'questions-screen';
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length== questions.length){
      setState(() {
        selectedAnswers=[];
        activeScreen = 'start-screen';
      });
    }
  }
  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){

      screenWidget =  QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }
    
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
          child: screenWidget,
        ),
      ),
    );
  }
}