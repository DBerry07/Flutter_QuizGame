import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/screens/quiz_selector_page.dart';

void main() {
  runApp( MaterialApp(
    title: 'Quiz App',
    theme: myTheme,
    home: const SafeArea(
      child: QuizSelectorPage(),
    ),
  ));
}
