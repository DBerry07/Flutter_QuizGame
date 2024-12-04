import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/my_button.dart';
import 'package:flutter_quiz_app/components/my_card.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/screens/loading_screen.dart';

class QuizSelectorPage extends StatelessWidget {
  const QuizSelectorPage({super.key});

  final String heading = 'Select your quiz!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Selector'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(child: Center(child: Text(heading, style: kQuestionTextStyle,))),
          Expanded(
            child: MyCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoadingScreen(filepath: 'assets/general.json');
                          },
                        ),
                      );
                    },
                    text: 'Basic Quiz',
                    colour: Colors.blue,
                  ),
                  MyButton(
                    text: 'Anatomy Quiz',
                    colour: Colors.red,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoadingScreen(filepath: 'assets/anatomy.json');
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
