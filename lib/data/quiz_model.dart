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
            'The capital of Australia is Canberra.\n\nSydney and Melbourne are its two largest cities.\n\nTasmania is an island off Australia\'s coast.'
    ),
    QuizQuestion(
        questionText: 'What is the largest organ inside the human body?',
        choice1: 'Brain',
        choice2: 'Liver',
        choice3: 'Stomach',
        choice4: 'Heart',
        answer: QuizChoice.Choice2,
        explanation: 'The largest organ inside the human body is the liver.'
    ),
    QuizQuestion(
        questionText: 'Who painted the Mona Lisa?',
        choice1: 'Michelangelo',
        choice2: 'Donatello',
        choice3: 'Leonardo da Vinci',
        answer: QuizChoice.Choice3,
        explanation: 'Leonardo da Vinci painted the Mona Lisa. He lived from the mid 1400\'s to the early 1500\'s.\n\nMichelangelo lived at roughly the same time as da Vinci; he created the sculpture of David.\n\nDonatello was a sculptor who died when da Vinci was a teenager.\n\nAll three men lived during the period of time known as the Italian Renaissance.'
    ),
    QuizQuestion(
        questionText: 'What is the largest planet in the solar system?',
        choice1: 'Jupiter',
        choice2: 'Neptune',
        choice3: 'Saturn',
        choice4: 'Earth',
        answer: QuizChoice.Choice1,
      explanation: 'Jupiter is the largest planet in the solar system.\n\nLike Jupiter, Neptune and Saturn are both gas giants.\n\nEarth is quite a bit smaller than any of them.'
    ),
    QuizQuestion(
        questionText:
            'The farthest thing we can see from Earth is in a different galaxy.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice1,
    explanation: 'The farthest object ever observed from Earth is HD1, which lies 13.3 billion light-years away from Earth. HD1 itself is not a star; it\'s an entire galaxy.'),
    QuizQuestion(
        questionText: 'A group of owls is called a:',
        choice1: 'Flock',
        choice2: 'Court',
        choice3: 'Hamlet',
        choice4: 'Parliament',
        answer: QuizChoice.Choice4,
    explanation: 'A group of owls is called a Parliament.'),
    QuizQuestion(
        questionText:
            'Earth is the only planet to spin counterclockwise. All the others spin clockwise.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice2,
    explanation: 'All of the planets in the solar system spin counterclockwise, except for Venus, which spins clockwise.'),
    QuizQuestion(
        questionText: 'What is the national animal of Scotland?',
        choice1: 'Lion',
        choice2: 'Ram',
        choice3: 'Unicorn',
        choice4: 'Wolverine',
        answer: QuizChoice.Choice3,
    explanation: 'The national animal of Scotland is the Unicorn.'),
    QuizQuestion(
        questionText: 'What is the largest desert in the world?',
        choice1: 'Antarctica',
        choice2: 'Sahara',
        choice3: 'Mojave',
        choice4: 'Gobi',
        answer: QuizChoice.Choice1,
    explanation: 'The largest desert on Earth is Antarctica.\nA desert doesn\'t necessarily need to be hot!'),
    QuizQuestion(
        questionText: 'The moon has always been geologically inactive.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice2,
        explanation: 'Back during the time when dinosaurs roamed the Earth, the moon had active volcanoes.'
    ),
    QuizQuestion(
        questionText: '\'Lunatic\' and \'Luddite\' have the same root word.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice2,
        explanation: '\'Lunatic\' comes from the the Latin name for the moon.\n\n\'Luddite\' might come from Ned Ludd, the (possibly not real) leader of the Luddite rioters in England during the 1800\'s.\nThe original Luddites rioted over how machines were replacing them in their jobs.'
    ),
    QuizQuestion(
        questionText:
            'Some of the most expensive types of coffee are made using beans found in certain species of animals\' feces.',
        choice1: 'True',
        choice2: 'False',
        answer: QuizChoice.Choice1,
    explanation: 'This is true. Examples include coffee made from beans excreted by elephants and Asian palm civets.'),
  ];

  List<QuizQuestion> getQuestionBank() => _questionBank;

  QuizQuestion getQuestion(int index) => _questionBank[index];
}
