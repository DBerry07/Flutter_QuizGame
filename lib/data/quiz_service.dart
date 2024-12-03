
import 'package:flutter_quiz_app/data/quiz_interface.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';

class QuizService {

  final QuizModelInterface _quizModel;
  int _questionNumber = 0;
  int correctAnswers = 0;

  QuizService({required QuizModelInterface quizModel}) : _quizModel = quizModel;

  String getQuestionText() {
    return _quizModel.getQuestionBank()[_questionNumber].questionText;
  }

  int getQuestionNumber() {
    if (_questionNumber == 0) correctAnswers = 0;
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
    String? choice = _quizModel.getQuestion(_questionNumber).choices[QuizChoice.Choice2];
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
    bool result = playerChoice == question.answer;
    result ? correctAnswers++ : null;
    print('number of correct answers: $correctAnswers');
    return result;
  }

  bool nextQuestion() {
    _questionNumber++;

    if (_questionNumber >= _quizModel.getQuestionBank().length) {
      _questionNumber = 0;
      return true;
    }
    return false;
  }

  int getTotalQuestions() {
    return _quizModel.getQuestionBank().length;
  }

  String? getQuestionExplanation() {
    return _quizModel.getQuestion(_questionNumber).explanation;
  }

}