import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/colours.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/data/quiz_model.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';
import 'package:flutter_quiz_app/data/quiz_service.dart';
import 'package:flutter_quiz_app/screens/results_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  QuizService quizService = QuizService(quizModel: QuizModel());

  void showCorrectToast() {
    context.showFlash<bool>(
      duration: const Duration(seconds: 2),
      builder: (context, controller) => FlashBar(
        backgroundColor: Colors.green,
        position: FlashPosition.top,
        controller: controller,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          side: BorderSide(),
        ),
        clipBehavior: Clip.hardEdge,
        icon: const Icon(
          Icons.check,
          color: Colors.white,
        ),
        content: const Text(
          'Correct!',
          style: kQuestionTextStyle,
        ),
      ),
    );
  }

  void showIncorrectToast() {
    context.showFlash<bool>(
      duration: const Duration(seconds: 2),
      builder: (context, controller) => FlashBar(
        backgroundColor: Colors.red,
        position: FlashPosition.top,
        controller: controller,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          side: BorderSide(),
        ),
        clipBehavior: Clip.hardEdge,
        icon: const Icon(
          Icons.close,
          color: Colors.white,
        ),
        content: const Text('Incorrect!', style: kQuestionTextStyle),
      ),
    );
  }

  bool checkAnswer(QuizChoice playerChoice) {
    if (kDebugMode) {
      print('Checking player answer of ${playerChoice.name}...');
    }
    bool result = quizService.checkPlayerAnswer(playerChoice);

    print('isCorrect?: $result');
    // print('questionExplanation not empty?: ${quizService.getQuestionExplanation().isNotEmpty}');

    String? explanation = quizService.getQuestionExplanation();

    if (explanation != null && explanation.isNotEmpty) {
      print('showing dialog');
      print(explanation);
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: result ? Text('Correct!') : Text('Incorrect'),
          content: Text(explanation),
        );
      });
    }

    //TODO: Can't read the dialog for the last question; it immediately transitions to the results screen after player answers.

    setState(() {
      bool result = quizService.nextQuestion();
      if (result) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(quizService),),);
      }
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: charcoalGrey,
      appBar: AppBar(
        // backgroundColor: kAppBarBackgroundColour,
        title: const Text('QUIZ APP'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(
            child: Text(
              'QUESTION ${quizService.getQuestionNumber() + 1}',
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
                  text: quizService.getChoice1()!,
                  colour: kChoice1Colour,
                  onPress: () {
                    bool result = checkAnswer(QuizChoice.Choice1);
                  },
                )
              : Container(),
          quizService.getChoice2() != null
              ? MyButton(
                  text: quizService.getChoice2()!,
                  colour: kChoice2Colour,
                  onPress: () {
                    bool result = checkAnswer(QuizChoice.Choice2);
                  },
                )
              : Container(),
          quizService.getChoice3() != null
              ? MyButton(
                  text: quizService.getChoice3()!,
                  colour: kChoice3Colour,
                  onPress: () {
                    bool result = checkAnswer(QuizChoice.Choice3);
                  },
                )
              : Container(),
          quizService.getChoice4() != null
              ? MyButton(
                  text: quizService.getChoice4()!,
                  colour: kChoice4Colour,
                  onPress: () {
                    bool result = checkAnswer(QuizChoice.Choice4);
                  },
                )
              : Container(),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPress, required this.text, this.colour});

  final Function? onPress;
  final String text;
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(Colors.white),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kButtonBorderRadius),
              side: BorderSide(
                  color: colour ?? Colors.amber,
                  width: kButtonBorderWidth,
                  style: BorderStyle.solid),
            ),
          ),
        ),
        onPressed: onPress != null
            ? () {
                if (kDebugMode) {
                  print('BUTTON PRESSED');
                }
                onPress!();
              }
            : () {
                if (kDebugMode) {
                  print('Empty onPressed');
                }
              },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: kAnswerButtonText.copyWith(color: colour),
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: kContainerColour),
      child: child,
    );
  }
}
