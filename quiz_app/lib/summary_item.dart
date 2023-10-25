import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.item, {super.key});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = item['correct_answer'] == item['chosen_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isCorrectAnswer
              ? const Color.fromARGB(255, 97, 160, 254)
              : const Color.fromARGB(255, 39, 109, 44),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              (item['question_index']).toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
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
                    color: Color.fromARGB(255, 135, 220, 251),
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
