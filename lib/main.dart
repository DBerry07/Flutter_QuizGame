import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/homepage.dart';
import 'package:flutter_quiz_app/my_app.dart';

void main() {
  runApp( MaterialApp(
    title: 'Quiz App',
    theme: myTheme,
    home: const SafeArea(
      child: Homepage(),
    ),
  ));
}
