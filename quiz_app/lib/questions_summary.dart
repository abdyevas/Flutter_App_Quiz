import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map(
              (data) {
                return Row(
                  children: [
                    Text(((data['question_index'] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        children: [
                          Text(data['question'] as String),
                          const SizedBox(height: 5),
                          Text(data['correct_answer'] as String),
                          Text(data['chosen_answer'] as String)
                        ],
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}