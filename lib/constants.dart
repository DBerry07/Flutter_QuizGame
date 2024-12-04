import 'package:flutter/material.dart';

import 'colours.dart';

ThemeData myTheme = ThemeData.from(
    colorScheme: ColorScheme.light(
      primary: Colors.amber,
      surface: ivory,
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

const kCorrectText = TextStyle(
  color: Colors.green,
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

const kPopupContent = TextStyle(
  fontSize: 22,
);

const kIncorrectText = TextStyle(
  color: Colors.red,
  fontWeight: FontWeight.bold,
  fontSize: 25,
);

const kChoice1Colour = Colors.blue;
const kChoice2Colour = Colors.red;
const kChoice3Colour = Colors.green;
const kChoice4Colour = Colors.orange;

const kScaffoldBackgroundColour = Colors.grey;
const kAppBarBackgroundColour = Colors.amber;

const double kButtonBorderWidth = 5;
const kButtonBorderRadius = 30.0;

const Map<String, String> quizzes = {
  'Basic Quiz': 'assets/general.json',
  'Anatomy Quiz': 'assets/anatomy.json',
  // 'Test Quiz': 'blah',
  // 'Test2 Quiz': 'blah',
};