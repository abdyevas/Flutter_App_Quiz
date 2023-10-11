import 'package:flutter/material.dart';

class EnteringScreen extends StatelessWidget {
  const EnteringScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 200),
        const SizedBox(height: 20),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Color.fromARGB(255, 217, 179, 255), 
            fontSize: 24,
            
          ),
        ),
      ],
    );
  }
}