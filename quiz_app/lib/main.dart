import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}
