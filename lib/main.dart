import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/screens/homepage.dart';
import 'package:flutter_quiz_app/default/my_app.dart';

void main() {
  runApp( MaterialApp(
    title: 'Quiz App',
    theme: myTheme,
    home: const SafeArea(
      child: Homepage(),
    ),
  ));
}
