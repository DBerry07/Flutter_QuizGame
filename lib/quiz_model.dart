
import 'package:flutter_quiz_app/quiz_question.dart';

class QuizModel {

  final List<QuizQuestion> _questionBank = [
    QuizQuestion(questionText: 'Right is right and left is left.', choice1: 'True', choice2: 'False'),
  ];

  List<QuizQuestion> getQuestionBank() => _questionBank;

  QuizQuestion getQuestion(int index) => _questionBank[index];

}