import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      decoration: BoxDecoration(color: isCorrectAnswer ? const Color.fromARGB(0, 52, 11, 185) : const Color.fromARGB(0, 203, 91, 223)),
      child: Text(questionNumber.toString(),)
    );
  }
}