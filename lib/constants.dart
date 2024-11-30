import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData.from(
    colorScheme: const ColorScheme.light(
      surface: Colors.green,
    ),
    useMaterial3: false);

const kContainerColour = Colors.white;

const kQuestionTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

const kAnswerButtonText = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

const kChoice1Colour = Colors.blue;
const kChoice2Colour = Colors.red;
const kChoice3Colour = Colors.green;
const kChoice4Colour = Colors.yellow;