import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(this._questionIndex, this._getNextQuestion, {super.key});

  final int _questionIndex;
  final void Function(int) _getNextQuestion;

  static const questions = [
    {
      'questionText': 'Ki a kedvenc anyukád?',
      'answers': [
        {'text': 'Niki anya', 'score': 10},
        {'text': 'Cili anya', 'score': 10},
        {'text': 'Rita anya', 'score': 1},
        {'text': 'Marci anya', 'score': 2},
      ],
    },
    {
      'questionText': 'Ki a kedvenc teknősöd?',
      'answers': [
        {'text': 'Teki', 'score': 10},
        {'text': 'Reki', 'score': 10},
        {'text': 'Breki', 'score': 3},
        {'text': 'Béki', 'score': 1},
      ],
    },
    {
      'questionText': 'Ki a kedvenc főnököd?',
      'answers': [
        {'text': 'Marci', 'score': 9},
        {'text': 'Sztani', 'score': 8},
        {'text': 'Lotti', 'score': 10},
        {'text': 'Tomcsi', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final answers =
        questions[_questionIndex]['answers'] as List<Map<String, Object>>;
    final answersList = [
      for (var answer in answers) Answer(answer, _getNextQuestion)
    ];

    return Column(
      children: [
        Question(
          questions[_questionIndex]['questionText'] as String,
        ),
        ...answersList
      ],
    );
  }
}
