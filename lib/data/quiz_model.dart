
import 'package:flutter_quiz_app/data/quiz_question.dart';

class QuizModel {

  final List<QuizQuestion> _questionBank = [
    QuizQuestion(questionText: 'What is the capital of Australia?', choice1: 'Sydney', choice2: 'Melbourne', choice3: 'Canberra', choice4: 'Tazmania', answer: QuizChoice.Choice3),
    QuizQuestion(questionText: 'What is the largest organ inside the human body?', choice1: 'Brain', choice2: 'Liver', choice3: 'Stomach', choice4: 'Heart', answer: QuizChoice.Choice2),
    QuizQuestion(questionText: 'Who painted the Mona Lisa?', choice1: 'Michelangelo', choice2: 'Donatello', choice3: 'Leonardo da Vinci', answer: QuizChoice.Choice3),
    QuizQuestion(questionText: 'What is the largest planet in the solar system?', choice1: 'Jupiter', choice2: 'Neptune', choice3: 'Saturn', choice4: 'Earth', answer: QuizChoice.Choice1),
    QuizQuestion(questionText: 'The farthest star we can see from Earth is in a different galaxy.', choice1: 'True', choice2: 'False', answer: QuizChoice.Choice1),
  ];

  List<QuizQuestion> getQuestionBank() => _questionBank;

  QuizQuestion getQuestion(int index) => _questionBank[index];

}