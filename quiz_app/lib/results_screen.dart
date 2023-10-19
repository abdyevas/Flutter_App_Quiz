import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index':i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'chosen_answer':chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You did it!'),
            const SizedBox(height: 30),
            QuestionsSummary(getSummary()),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart'))
          ],
        ),
      ),
    );
  }
}
