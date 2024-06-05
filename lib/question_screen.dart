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
    return SizedBox(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        const Text ('These are questions ...'),
        const SizedBox(height: 30),
        ElevatedButton(onPressed: () {},
          style: ElevatedButton.styleFrom(),
            child:const Text('Answer 1'),
        ),
        ElevatedButton(onPressed: () {},
          child:const Text('Answer 2'),
        ),
        ElevatedButton(onPressed: () {},
          child:const Text('Answer 3'),
        ),
        ElevatedButton(onPressed: () {},
          child:const Text('Answer 4'),
        ),
      ]),
    );
  }
}