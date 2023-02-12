import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map<String, Object> answer;
  final void Function(int) getNextQuestion;

  const Answer(this.answer, this.getNextQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => getNextQuestion(answer['score'] as int),
        child: Text(answer['text'] as String),
      ),
    );
  }
}
