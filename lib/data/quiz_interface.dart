
import 'package:flutter_quiz_app/data/quiz_question.dart';

abstract class QuizModelInterface {

  get questionBank;
  QuizQuestion getQuestion(int index);

}