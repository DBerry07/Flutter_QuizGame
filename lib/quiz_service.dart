
import 'package:flutter_quiz_app/quiz_model.dart';
import 'package:flutter_quiz_app/quiz_question.dart';

class QuizService {

  QuizModel _quizModel;
  int _questionNumber = 0;

  QuizService({required QuizModel quizModel}) : _quizModel = quizModel;

  String getQuestionText() {
    return _quizModel.getQuestionBank()[_questionNumber].questionText;
  }

  List<String> getChoices() {
    List<String> choices = [];
    List<QuizQuestion> bank = _quizModel.getQuestionBank();

    choices.add(bank[_questionNumber].choice1);
    choices.add(bank[_questionNumber].choice2);
    if (bank[_questionNumber].choice3 != null) choices.add(bank[_questionNumber].choice3!);
    if (bank[_questionNumber].choice4 != null) choices.add(bank[_questionNumber].choice4!);

    return choices;
  }

  void nextQuestion() {
    _questionNumber++;

    if (_questionNumber >= _quizModel.getQuestionBank().length) {
      _questionNumber = 0;
    }
  }

}