import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz_model.dart';
import 'package:flutter_quiz_app/quiz_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  QuizService quizService = QuizService(quizModel: QuizModel());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ APP'),
        ),
        body: Column(
          children: [
            Text(quizService.getQuestionText()),
            quizService.getChoice1() != null
                ? MyButton(text: quizService.getChoice1()!)
                : Container(),
            quizService.getChoice2() != null
                ? MyButton(text: quizService.getChoice2()!)
                : Container(),
            quizService.getChoice3() != null
                ? MyButton(text: quizService.getChoice3()!)
                : Container(),
            quizService.getChoice4() != null
                ? MyButton(text: quizService.getChoice4()!)
                : Container(),
          ],
        ),
      )),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPress, required this.text});

  final Function? onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress != null ? onPress!() : null,
      child: Text(text),
    );
  }
}
