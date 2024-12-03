
import 'dart:math';

import 'package:flutter_quiz_app/data/quiz_interface.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';

class QuizService {

  final QuizModelInterface quizModel;
  int _questionNumber = 0;
  int _questionIndex = 0;
  int correctAnswers = 0;
  List<int> _questionOrder = [];
  QuizQuestion? question;

  QuizService({required this.quizModel}) {

    for (int i = 0; i < quizModel.getQuestionBank().length; i++) {
      _questionOrder.add(i);
    }
    shuffleOrder();
    getQuestion();
  }

  void shuffleOrder() {
    _questionOrder.shuffle(Random());
  }

  //TODO: maybe make question selection random?

  void getQuestion() {
    _questionNumber = _questionOrder[_questionIndex];
    print('_question number: $_questionNumber');
    question = quizModel.getQuestion(_questionNumber);
  }

  int getQuestionOrderIndex() {
    return _questionIndex;
  }

  String getQuestionText() {
    return question?.questionText ?? 'null question text';
  }

  int getQuestionNumber() {
    if (_questionNumber == 0) correctAnswers = 0;
    return _questionNumber;
  }

  String? getChoice1() {
    // print('Getting choice 1');
    String choice = question?.choices[QuizChoice.Choice1] ?? '';
    // print(choice);
    return choice;
  }
  String? getChoice2() {
    // print('Getting choice 2');
    String? choice = question?.choices[QuizChoice.Choice2];
    // print(choice);
    return choice;
  }
  String? getChoice3() {
    // print('Getting choice 3');
    String? choice = question?.choices[QuizChoice.Choice3];
    // print(choice);
    return choice;
  }
  String? getChoice4() {
    // print('Getting choice 4');
    String? choice = question?.choices[QuizChoice.Choice4];
    // print(choice);
    return choice;
  }

  bool checkPlayerAnswer(QuizChoice playerChoice) {
    bool result = playerChoice == question?.answer;
    result ? correctAnswers++ : null;
    print('number of correct answers: $correctAnswers');
    return result;
  }

  bool nextQuestion() {
    _questionIndex++;
    if (_questionIndex >= _questionOrder.length) {
      _questionIndex = 0;
      shuffleOrder();
      getQuestion();
      return true;
    }
    getQuestion();
    return false;
  }

  int getTotalQuestions() {
    return quizModel.getQuestionBank().length;
  }

  String? getQuestionExplanation() {
    return question?.explanation;
  }

}