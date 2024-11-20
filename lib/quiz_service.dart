
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
    QuizQuestion question = _quizModel.getQuestion(_questionNumber);

    choices.add(question.choice1);
    choices.add(question.choice2);
    if (question.choice3 != null) choices.add(question.choice3!);
    if (question.choice4 != null) choices.add(question.choice4!);

    return choices;
  }

  String? getChoice1() {
    return _quizModel.getQuestion(_questionNumber).choice1;
  }
  String? getChoice2() {
    return _quizModel.getQuestion(_questionNumber).choice2;
  }
  String? getChoice3() {
    return _quizModel.getQuestion(_questionNumber).choice3;
  }
  String? getChoice4() {
    return _quizModel.getQuestion(_questionNumber).choice4;
  }

  void nextQuestion() {
    _questionNumber++;

    if (_questionNumber >= _quizModel.getQuestionBank().length) {
      _questionNumber = 0;
    }
  }

}