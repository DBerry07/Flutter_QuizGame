class QuizQuestion {

  String questionText;

  Map<QuizChoice, String> choices = {};
  QuizChoice answer;
  final String? explanation;
  final int number;

  QuizQuestion({
    required this.questionText,
    required String choice1,
    String? choice2,
    String? choice3,
    String? choice4,
    required this.answer,
    this.explanation,
    required this.number,
  }) {
    choices[QuizChoice.Choice1] = choice1;
    choice2 != null ? choices[QuizChoice.Choice2] = choice2: '';
    choice3 != null ? choices[QuizChoice.Choice3] = choice3: '';
    choice4 != null ? choices[QuizChoice.Choice4] = choice4: '';
  }

  @override
  String toString() {
    super.toString();
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.write('QUESTION: $questionText\n');
    stringBuffer.write('CHOICE 1: ${choices[0]}\n');
    stringBuffer.write('CHOICE 2: ${choices[1]}\n');
    stringBuffer.write('CHOICE 3: ${choices[2]}\n');
    stringBuffer.write('CHOICE 4: ${choices[4]}\n');
    stringBuffer.write('ANSWER: $answer\n');
    stringBuffer.write('EXPLANATION: $explanation\n');
    return stringBuffer.toString();
  }

}

enum QuizChoice {
  Choice1,
  Choice2,
  Choice3,
  Choice4,
}