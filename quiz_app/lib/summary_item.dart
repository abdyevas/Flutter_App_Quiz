import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.item, {super.key});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    // final isCorrectAnswer = item['correct_answer'] == item['chosen_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['question'] as String,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  item['chosen_answer'] as String,
                  style: const TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
                Text(
                  item['correct_answer'] as String,
                  style: const TextStyle(
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
