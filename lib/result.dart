import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final void Function() resetQuiz;

  const Result(this._totalScore, this.resetQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('$_totalScore pont',
              style:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          TextButton(
            onPressed: resetQuiz,
            child: const Text(
              'Restart Quiz',
            ),
          )
        ],
      ),
    );
  }
}
