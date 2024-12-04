class QuizQuestion {

  String _questionText = 'Empty Question Text';
  get questionText {
    return _questionText;
  }

  Map<QuizChoice, String> _choices = {};
  QuizChoice _answer = QuizChoice.Choice1;
  final String? explanation;
  final int number;

  QuizQuestion({
    required String questionText,
    required String choice1,
    String? choice2,
    String? choice3,
    String? choice4,
    required QuizChoice answer,
    this.explanation,
    required this.number,
  }) {
    _answer = answer;
    _questionText = questionText;
    _choices[QuizChoice.Choice1] = choice1;
    choice2 != null ? _choices[QuizChoice.Choice2] = choice2: '';
    choice3 != null ? _choices[QuizChoice.Choice3] = choice3: '';
    choice4 != null ? _choices[QuizChoice.Choice4] = choice4: '';
  }

  @override
  String toString() {
    super.toString();
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.write('QUESTION: $questionText\n');
    stringBuffer.write('CHOICE 1: ${_choices[0]}\n');
    stringBuffer.write('CHOICE 2: ${_choices[1]}\n');
    stringBuffer.write('CHOICE 3: ${_choices[2]}\n');
    stringBuffer.write('CHOICE 4: ${_choices[4]}\n');
    stringBuffer.write('ANSWER: $_answer\n');
    stringBuffer.write('EXPLANATION: $explanation\n');
    return stringBuffer.toString();
  }

  String? get choice1 {
    try {
      return _choices[QuizChoice.Choice1];
    } catch (e) {
      print(e);
      return 'ERROR';
    }
  }

  String? get choice2 {
    return _choices[QuizChoice.Choice2];
  }

  String? get choice3 {
    return _choices[QuizChoice.Choice3];
  }

  String? get choice4 {
    return _choices[QuizChoice.Choice4];
  }

  String get questionExplanation {
    try {
      return this.explanation!;
    } catch (e) {
      return 'ERROR';
    }
  }

  get answer {
    return _answer;
  }

}

enum QuizChoice {
  Choice1,
  Choice2,
  Choice3,
  Choice4,
}