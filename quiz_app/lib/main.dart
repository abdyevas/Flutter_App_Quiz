import 'package:flutter/material.dart';
import 'package:quiz_app/background_style.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: BackgroundStyle(
          Color.fromARGB(255, 51, 11, 97),
          Color.fromARGB(255, 101, 38, 172)
        ),
      ),
    ),
  );
}
