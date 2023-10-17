import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.screen, {super.key});

  final void Function() screen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz.png', 
            width: 300,
          ),
          const SizedBox(height: 40),
          const Text(
            'Check your Football knowledge!',
            style: TextStyle(
              color: Color.fromARGB(255, 179, 255, 231),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: screen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 73, 167, 101),
              textStyle: const TextStyle(
                fontSize: 18,
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
