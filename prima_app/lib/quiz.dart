import 'package:flutter/material.dart';
import 'package:prima_app/answer.dart';
import 'package:prima_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final Function answerQ;
  int totalScore;

  Quiz({
    @required this.questions,
    @required this.qIndex,
    @required this.answerQ,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qIndex]['questionText'].toString()),
        ...(questions[qIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(answer['text'], () => answerQ(answer['score']));
        }).toList(),
      ],
    );
  }
}
