import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/my_button.dart';
import 'package:flutter_quiz_app/quizzes/quiz_model_basic.dart';
import 'package:flutter_quiz_app/screens/homepage.dart';

class QuizSelectorPage extends StatelessWidget {
  const QuizSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Selector'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              MyButton(
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Homepage(quizModel: BasicQuizModel());
                      },
                    ),
                  );
                },
                text: 'Basic Quiz',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
