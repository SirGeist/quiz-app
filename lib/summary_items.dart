import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_identifier.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {

    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
                  children: [
                    QuestionIdentifier(questionIndex: itemData['question_index'] as int, isCorrectAnswer: isCorrectAnswer,),

                    Text(
                      ((itemData['question_index'] as int) + 1).toString(),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(itemData['question'] as String),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(itemData['user_answer'] as String),
                          Text(itemData['correct_answer'] as String),
                        ],
                      ),
                    ),
                  ],
                ),
    );
  }
}