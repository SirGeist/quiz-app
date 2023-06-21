import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      alignment: Alignment.center,
      width: 30,
      height: 30,
        decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 49, 144, 212)
              : const Color.fromARGB(255, 244, 134, 246),

          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          questionNumber.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 76, 11, 188),
          )
        ));
  }
}
