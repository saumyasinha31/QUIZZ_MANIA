import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz , {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,

          ),
          SizedBox(height : 80),
          const Text('Learn Science the fun way !'
          ,
          style: TextStyle(
            color: Colors.black26,
            fontSize: 24
          ),
          ),
          const SizedBox(height:30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.black38,
            ),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
            )
        ],
      ),
    );
  }
}
