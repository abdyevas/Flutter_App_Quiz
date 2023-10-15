import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 11, 97),
                Color.fromARGB(255, 101, 38, 172)
              ], 
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const FirstScreen(), 
        ),
      ),
    );
  }
}