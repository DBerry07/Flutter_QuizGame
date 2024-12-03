
import 'package:flutter_quiz_app/data/quiz_question.dart';

abstract class QuizModelInterface {

  late List<QuizQuestion> _questionBank;

  List<QuizQuestion> getQuestionBank();
  QuizQuestion getQuestion(int index);

}