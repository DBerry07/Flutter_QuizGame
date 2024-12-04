import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/my_button.dart';
import 'package:flutter_quiz_app/components/my_card.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/screens/info_screen.dart';
import 'package:flutter_quiz_app/screens/loading_screen.dart';

class QuizSelectorPage extends StatelessWidget {
  const QuizSelectorPage({super.key});

  final String heading = 'Select your quiz!';

  @override
  Widget build(BuildContext context) {
    List<Widget> buttons = [];
    List<Widget> rowContent = [];

    int i = 1;

    for (String key in quizzes.keys) {
      Color buttonColour = kChoice1Colour;

      if (i % 4 == 0) {
        buttonColour = kChoice4Colour;
      } else if (i % 3 == 0) {
        buttonColour = kChoice3Colour;
      } else if (i % 2 == 0) {
        buttonColour = kChoice2Colour;
      } else {
        buttonColour = kChoice1Colour;
      }

      rowContent.add(
        MyButton(
          colour: buttonColour,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoadingScreen(filepath: quizzes[key]!);
                },
              ),
            );
          },
          child:
              Text(key, style: kAnswerButtonText.copyWith(color: buttonColour)),
        ),
      );
      i++;

      if ((i - 1) % 2 == 0) {
        buttons.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: rowContent,
          ),
        );
        rowContent = [];
      }
    }

    if (rowContent.isNotEmpty) {
      buttons.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: rowContent,
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Selector'),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InfoScreen();
                  },
                ),
              );
            },
            icon: Icon(Icons.info)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(
              child: Center(
                  child: Text(
            heading,
            style: kQuestionTextStyle,
          ))),
          Expanded(
            child: MyCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: buttons,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
