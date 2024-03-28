import 'package:flutter/material.dart';
import 'package:quizz_mania/start_screen.dart';
class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
  return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(context) {
    return Text('QuestionScreen');
  }
}