import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/data/quiz_interface.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';
import 'package:flutter_quiz_app/data/quiz_service.dart';
import 'package:flutter_quiz_app/screens/results_page.dart';

import '../components/my_button.dart';
import '../components/my_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key, required this.quizModel});

  final QuizModelInterface quizModel;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late QuizService quizService = QuizService(quizModel: widget.quizModel);

  void checkAnswer(QuizChoice playerChoice) {
    if (kDebugMode) {
      print('Checking player answer of ${playerChoice.name}...');
    }
    bool result = quizService.checkPlayerAnswer(playerChoice);

    if (kDebugMode) {
      print('isCorrect?: $result');
    }

    alertDialog(
        result: result, explanation: quizService.getQuestionExplanation());
  }

  void alertDialog({bool result = false, String? explanation}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: result
                ? const Text(
                    'Correct!',
                    style: kCorrectText,
                  )
                : const Text(
                    'Incorrect',
                    style: kIncorrectText,
                  ),
            content: Text(
              explanation ?? '',
              style: kPopupContent,
            ),
          );
        }).whenComplete(
      () {
        setState(() {
          bool result = quizService.nextQuestion();
          if (result) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultsPage(quizService),
              ),
            );
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: charcoalGrey,
      appBar: AppBar(
        // backgroundColor: kAppBarBackgroundColour,
        title: const Text('QUIZ APP'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          icon: Icon(Icons.home),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(
            child: Text(
              'QUESTION ${quizService.getQuestionOrderIndex() + 1}',
              style: kQuestionTextStyle,
            ),
          ),
          Expanded(
              child: MyCard(
            child: Text(
              quizService.getQuestionText(),
              style: kQuestionTextStyle,
            ),
          )),
          quizService.getChoice1() != null
              ? MyButton(
            colour: kChoice1Colour,
                  child: Text(quizService.getChoice1()!,
                      style: kAnswerButtonText.copyWith(color: kChoice1Colour)),
                  onPress: () {
                    checkAnswer(QuizChoice.Choice1);
                  },
                )
              : Container(),
          quizService.getChoice2() != null
              ? MyButton(
            colour: kChoice2Colour,
                  child: Text(quizService.getChoice2()!,
                      style: kAnswerButtonText.copyWith(color: kChoice2Colour)),
                  onPress: () {
                    checkAnswer(QuizChoice.Choice2);
                  },
                )
              : Container(),
          quizService.getChoice3() != null
              ? MyButton(
            colour: kChoice3Colour,
                  child: Text(quizService.getChoice3()!,
                      style: kAnswerButtonText.copyWith(color: kChoice3Colour)),
                  onPress: () {
                    checkAnswer(QuizChoice.Choice3);
                  },
                )
              : Container(),
          quizService.getChoice4() != null
              ? MyButton(
                  colour: kChoice4Colour,
                  onPress: () {
                    checkAnswer(QuizChoice.Choice4);
                  },
                  child: Text(quizService.getChoice4()!,
                      style: kAnswerButtonText.copyWith(color: kChoice4Colour)),           )
              : Container(),
        ],
      ),
    );
  }
}
