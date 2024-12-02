import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/homepage.dart';
import 'package:flutter_quiz_app/quiz_service.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(this.quizService, {super.key});

  final QuizService quizService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('RESULTS'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: MyCard(
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Your results',
                          style: kQuestionTextStyle,
                        )))),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: MyCard(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('You got...', style: kAnswerButtonText),
                        Text(
                          '${quizService.correctAnswers.toString()} out of ${quizService.getTotalQuestions()}',
                          style:
                              kQuestionTextStyle.copyWith(color: Colors.amber, fontSize: 40),
                        ),
                        Text(
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
                  Navigator.pop(context);
                },
                text: 'Go back',
                )
              ),
          ],
        ),
      ),
    );
  }
}
