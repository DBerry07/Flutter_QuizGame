import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/my_button.dart';
import 'package:flutter_quiz_app/quizzes/quiz_model.dart';
import 'package:flutter_quiz_app/screens/homepage.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.filepath});

  final String filepath;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  late QuizModel quizModel;

  @override
  initState() {
    super.initState();
    quizModel = QuizModel(filepath: widget.filepath);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Center(
          child: MyButton(text: 'Proceed', onPress: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Homepage(quizModel: quizModel);
            },),);
          },),
        )
    );
  }
}

