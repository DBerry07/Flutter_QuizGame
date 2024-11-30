import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ APP'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(child: Text('QUESTION ${quizService.getQuestionNumber() + 1}', style: kQuestionTextStyle,), isExpanded: false,),
          MyCard(child: Text(quizService.getQuestionText(), style: kQuestionTextStyle,), isExpanded: true,),
          quizService.getChoice1() != null
              ? MyButton(text: quizService.getChoice1()!, colour: Colors.blue,)
              : Container(),
          quizService.getChoice2() != null
              ? MyButton(text: quizService.getChoice2()!, colour: Colors.red,)
              : Container(),
          quizService.getChoice3() != null
              ? MyButton(text: quizService.getChoice3()!, colour: Colors.green,)
              : Container(),
          quizService.getChoice4() != null
              ? MyButton(text: quizService.getChoice4()!, colour: Colors.yellow)
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
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colour),
      ),
      onPressed: onPress != null ? onPress!() : null,
      child: Text(text),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key, this.child, required this.isExpanded});

  final Widget? child;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {

    Widget widget = isExpanded ?
    Expanded(
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: kContainerColour
        ),
        child: child,
      ),
    ) :
    Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: kContainerColour
      ),
      child: child,
    );

    return widget;
  }
}
