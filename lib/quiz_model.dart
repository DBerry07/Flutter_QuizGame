
import 'package:flutter_quiz_app/quiz_question.dart';

class QuizModel {

  final List<QuizQuestion> _questionBank = [
    QuizQuestion(questionText: 'What is the capital of Australia.', choice1: 'Sydney', choice2: 'Melbourne', choice3: 'Canbarra', choice4: 'Tazmania', answer: QuizChoice.Choice3),
    QuizQuestion(questionText: 'Up is down and down is up.', choice1: 'True', choice2: 'False', answer: QuizChoice.Choice2),
  ];

  List<QuizQuestion> getQuestionBank() => _questionBank;

  QuizQuestion getQuestion(int index) => _questionBank[index];

}