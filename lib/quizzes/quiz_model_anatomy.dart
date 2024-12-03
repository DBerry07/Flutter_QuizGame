
import 'package:flutter_quiz_app/data/quiz_interface.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';

class QuizModelAnatomy extends QuizModelInterface {

  @override
  QuizQuestion getQuestion(int index) => _questionBank[index];

  @override
  List<QuizQuestion> getQuestionBank() => _questionBank;

  final List<QuizQuestion> _questionBank = [];


}