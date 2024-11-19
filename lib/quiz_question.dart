class QuizQuestion {

  String questionText;

  String choice1;
  String choice2;
  String? choice3;
  String? choice4;

  QuizQuestion({
    required this.questionText,
    required this.choice1,
    required this.choice2,
    this.choice3,
    this.choice4
  });

}