import 'package:flutter_quiz_app/data/quiz_question.dart';

class QuizModel {
  final List<QuizQuestion> _questionBank = [
    QuizQuestion(
        questionText: 'What is the capital of Australia?',
        choice1: 'Sydney',
        choice2: 'Melbourne',
        choice3: 'Canberra',
        choice4: 'Tasmania',
        answer: QuizChoice.Choice3,
        explanation:
            'The capital of Australia is Canberra.\nSydney and Melbourne are its two largest cities.\nTasmania is an island off Australia\'s coast.'),
    QuizQuestion(
        questionText: 'What is the largest organ inside the human body?',
        choice1: 'Brain',
        choice2: 'Liver',
        choice3: 'Stomach',
        choice4: 'Heart',
        answer: QuizChoice.Choice2),
    QuizQuestion(
        questionText: 'Who painted the Mona Lisa?',
        choice1: 'Michelangelo',
        choice2: 'Donatello',
        choice3: 'Leonardo da Vinci',
        answer: QuizChoice.Choice3),
    QuizQuestion(
        questionText: 'What is the largest planet in the solar system?',
        choice1: 'Jupiter',
        choice2: 'Neptune',
        choice3: 'Saturn',
        choice4: 'Earth',
        answer: QuizChoice.Choice1),
    QuizQuestion(
        questionText:
            'The farthest star we can see from Earth is in a different galaxy.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice1),
    QuizQuestion(
        questionText: 'A group of owls is called a:',
        choice1: 'Flock',
        choice2: 'Court',
        choice3: 'Hamlet',
        choice4: 'Parliament',
        answer: QuizChoice.Choice4),
    QuizQuestion(
        questionText:
            'Earth is the only planet to spin counterclockwise. All the others spin clockwise.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice2),
    QuizQuestion(
        questionText: 'What is the national animal of Scotland?',
        choice1: 'Lion',
        choice2: 'Ram',
        choice3: 'Unicorn',
        choice4: 'Wolverine',
        answer: QuizChoice.Choice3),
    QuizQuestion(
        questionText: 'What is the largest desert in the world?',
        choice1: 'Antarctica',
        choice2: 'Sahara',
        choice3: 'Mojave',
        choice4: 'Gobi',
        answer: QuizChoice.Choice1),
    QuizQuestion(
        questionText: 'The moon has always been geologically inactive.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice2),
    QuizQuestion(
        questionText: '\'Lunatic\' and \'Luddite\' have the same root word.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice2),
    QuizQuestion(
        questionText:
            'Some of the most expensive types of coffee are made using beans found in certain species of animals\' feces.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice1),
  ];

  List<QuizQuestion> getQuestionBank() => _questionBank;

  QuizQuestion getQuestion(int index) => _questionBank[index];
}
