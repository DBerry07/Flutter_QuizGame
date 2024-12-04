
import 'dart:math';

import 'package:flutter_quiz_app/data/quiz_interface.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';

class QuizService {
  QuizService({required QuizModelInterface quizModel}) : _quizModel = quizModel {
    for (int i = 0; i < _quizModel.questionBank.length; i++) {
      _questionOrder.add(i);
    }
    shuffleOrder();
  }

  final QuizModelInterface _quizModel;
  int _questionIndex = 0;
  int _correctAnswers = 0;
  int _maxQuestions = 1;
  List<int> _questionOrder = [];

  QuizQuestion get question {
    int index = 0;
    try {
      index = _questionOrder[_questionIndex];
    } catch (e) {
      print(e);
    }
    return _quizModel.getQuestion(index);
  }

  int get questionIndex {
    return _questionIndex;
  }

  int get correctAnswerCount {
    return _correctAnswers;
  }

  int get maxQuestions {
    return _maxQuestions;
  }

  int get totalQuestions {
    int length = 0;
    try {
      length = _quizModel.questionBank.length;
    } catch(e) {
      print(e);
    }
    return length;
  }

  void shuffleOrder() {
    _questionOrder.shuffle(Random());
    selectOnlyFirstTenQuestions();
  }

  void selectOnlyFirstTenQuestions() {
    _maxQuestions = 10;
    if (_questionOrder.length < 10) {
      _maxQuestions = _questionOrder.length;
    }

    _questionOrder = _questionOrder.sublist(0, _maxQuestions);
  }

  bool checkPlayerAnswer(QuizChoice playerChoice) {
    bool result = playerChoice == question.answer;
    print(question);
    result ? _correctAnswers++ : null;
    print('number of correct answers: $_correctAnswers');
    return result;
  }

  bool nextQuestion() {
    _questionIndex++;
    if (_questionIndex >= _questionOrder.length) {
      _questionIndex = 0;
      return true;
    };
    return false;
  }

  void reset() {
    _questionIndex = 0;
    _correctAnswers = 0;
    shuffleOrder();
  }

}