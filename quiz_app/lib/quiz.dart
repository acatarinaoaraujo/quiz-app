import 'package:flutter/material.dart';
import 'package:quiz_app/score.dart';

import './question.dart';
import './answer.dart';
import 'score.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final int scoreSum;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.scoreSum,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Score(scoreSum),
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
