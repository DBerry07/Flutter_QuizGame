
import 'package:flutter_quiz_app/quiz_model.dart';
import 'package:flutter_quiz_app/quiz_question.dart';

class QuizService {

  QuizModel _quizModel;
  int _questionNumber = 0;

  QuizService({required QuizModel quizModel}) : _quizModel = quizModel;

  String getQuestionText() {
    return _quizModel.getQuestionBank()[_questionNumber].questionText;
  }

  int getQuestionNumber() {
    return _questionNumber;
  }

  String? getChoice1() {
    // print('Getting choice 1');
    String choice = _quizModel.getQuestion(_questionNumber).choices[QuizChoice.Choice1] ?? '';
    // print(choice);
    return choice;
  }
  String? getChoice2() {
    // print('Getting choice 2');
    String choice = _quizModel.getQuestion(_questionNumber).choices[QuizChoice.Choice2] ?? '';
    // print(choice);
    return choice;
  }
  String? getChoice3() {
    // print('Getting choice 3');
    String? choice = _quizModel.getQuestion(_questionNumber).choices[QuizChoice.Choice3];
    // print(choice);
    return choice;
  }
  String? getChoice4() {
    // print('Getting choice 4');
    String? choice = _quizModel.getQuestion(_questionNumber).choices[QuizChoice.Choice4];
    // print(choice);
    return choice;
  }

  bool checkPlayerAnswer(QuizChoice playerChoice) {
    QuizQuestion question = _quizModel.getQuestion(_questionNumber);
    return playerChoice == question.answer;
  }

  void nextQuestion() {
    _questionNumber++;

    if (_questionNumber >= _quizModel.getQuestionBank().length) {
      _questionNumber = 0;
    }
  }

}