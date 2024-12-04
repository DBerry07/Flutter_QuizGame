import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/data/quiz_service.dart';

import '../components/my_button.dart';
import '../components/my_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(this.quizService, {super.key});

  final QuizService quizService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('RESULTS'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
                child: MyCard(
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Your results',
                          style: kQuestionTextStyle,
                        )))),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyCard(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('You got...', style: kAnswerButtonText),
                        Text(
                          '${quizService.getNumberOfCorrectAnswers().toString()} out of ${quizService.getTotalQuestions()}',
                          style: kQuestionTextStyle.copyWith(
                              color: Colors.amber, fontSize: 40),
                        ),
                        const Text(
                          '...correct!',
                          style: kAnswerButtonText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            MyCard(
                child: MyButton(
              onPress: () {
                quizService.reset();
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text('Go back', style: kAnswerButtonText),
            )),
          ],
        ),
      ),
    );
  }
}
