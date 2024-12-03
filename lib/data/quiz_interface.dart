
import 'package:flutter_quiz_app/data/quiz_question.dart';

abstract class QuizModelInterface {

  List<QuizQuestion> getQuestionBank();
  QuizQuestion getQuestion(int index);

}