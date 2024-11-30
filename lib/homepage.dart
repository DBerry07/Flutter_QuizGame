import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/quiz_model.dart';
import 'package:flutter_quiz_app/quiz_question.dart';
import 'package:flutter_quiz_app/quiz_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  QuizService quizService = QuizService(quizModel: QuizModel());

  void checkAnswer(QuizChoice playerChoice) {
    print('Checking player answer of ${playerChoice.name}...');
    bool result = quizService.checkPlayerAnswer(playerChoice);
    result ? print('Player got it RIGHT') : print('Player got it WRONG');
    setState(() {
      quizService.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ APP'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCard(child: Text('QUESTION ${quizService.getQuestionNumber() + 1}', style: kQuestionTextStyle,),),
          Expanded(child: MyCard(child: Text(quizService.getQuestionText(), style: kQuestionTextStyle,),)),
          
          quizService.getChoice1() != null
              ? MyButton(text: quizService.getChoice1()!, colour: Colors.blue, onPress:() { checkAnswer(QuizChoice.Choice1); },)
              : Container(),
          quizService.getChoice2() != null
              ? MyButton(text: quizService.getChoice2()!, colour: Colors.red, onPress:() { checkAnswer(QuizChoice.Choice2); },)
              : Container(),
          quizService.getChoice3() != null
              ? MyButton(text: quizService.getChoice3()!, colour: Colors.green, onPress:() { checkAnswer(QuizChoice.Choice3); },)
              : Container(),
          quizService.getChoice4() != null
              ? MyButton(text: quizService.getChoice4()!, colour: Colors.yellow, onPress:() { checkAnswer(QuizChoice.Choice4); },)
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
          backgroundColor: MaterialStateProperty.all(colour),
        ),
        onPressed: onPress != null ? () {
          print('BUTTON PRESSED');
          onPress!();
        }: () {print('Empty onPressed');},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text, style: kAnswerButtonText,),
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
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: kContainerColour
      ),
      child: child,
    );

  }
}
