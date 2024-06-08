import 'package:flutter/material.dart';
import 'package:quizz_mania/summary_item.dart';
import 'package:quizz_mania/data/questions.dart';
import 'package:quizz_mania/data/questions.dart';
import 'package:quizz_mania/question_identifier.dart';
import 'package:quizz_mania/summary_item.dart';

class QuestionsSummary extends StatelessWidget{
   QuestionsSummary(this.summaryData,{super.key});

  List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 300,
      
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
                (data){
          return Row(children: [
            Text(((data['question_index']as int)+1).toString()),
            Expanded(
              child: Column(children: [
                Text(data['question']as String),
                const SizedBox(height: 5,),
                Text(data['user_answer']as String),
                Text(data['correct_answer']as String),
              ],),
            ),
          ]);
        },
        ).toList(),
        ),
      ),
    );
  }
}