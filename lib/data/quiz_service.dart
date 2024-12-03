
import 'dart:math';

import 'package:flutter_quiz_app/data/quiz_interface.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';

class QuizService {
  QuizService({required QuizModelInterface quizModel}) : _quizModel = quizModel {
    for (int i = 0; i < _quizModel.getQuestionBank().length; i++) {
      _questionOrder.add(i);
    }
    shuffleOrder();
    getQuestion();
  }

  final QuizModelInterface _quizModel;
  int _questionIndex = 0;
  int _correctAnswers = 0;
  final List<int> _questionOrder = [];
  QuizQuestion? _question;

  void shuffleOrder() {
    _questionOrder.shuffle(Random());
  }

  void getQuestion() {
    int index = _questionOrder[_questionIndex];
    print('index number: $index');
    _question = _quizModel.getQuestion(index);
  }

  int getQuestionOrderIndex() {
    return _questionIndex;
  }

  String getQuestionText() {
    return _question?.questionText ?? 'null question text';
  }

  String? getChoice1() {
    // print('Getting choice 1');
    String choice = _question?.choices[QuizChoice.Choice1] ?? '';
    // print(choice);
    return choice;
  }
  String? getChoice2() {
    // print('Getting choice 2');
    String? choice = _question?.choices[QuizChoice.Choice2];
    // print(choice);
    return choice;
  }
  String? getChoice3() {
    // print('Getting choice 3');
    String? choice = _question?.choices[QuizChoice.Choice3];
    // print(choice);
    return choice;
  }
  String? getChoice4() {
    // print('Getting choice 4');
    String? choice = _question?.choices[QuizChoice.Choice4];
    // print(choice);
    return choice;
  }

  bool checkPlayerAnswer(QuizChoice playerChoice) {
    bool result = playerChoice == _question?.answer;
    result ? _correctAnswers++ : null;
    print('number of correct answers: $_correctAnswers');
    return result;
  }

  bool nextQuestion() {
    _questionIndex++;
    if (_questionIndex == 0) {
      _correctAnswers = 0;
    }
    else if (_questionIndex >= _questionOrder.length) {
      _questionIndex = 0;
      shuffleOrder();
      getQuestion();
      return true;
    }
    getQuestion();
    return false;
  }

  int getTotalQuestions() {
    return _quizModel.getQuestionBank().length;
  }

  String? getQuestionExplanation() {
    return _question?.explanation;
  }

  int getNumberOfCorrectAnswers() {
    return _correctAnswers;
  }

}