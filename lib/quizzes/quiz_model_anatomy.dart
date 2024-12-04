import 'package:flutter_quiz_app/data/json_file_reader.dart';
import 'package:flutter_quiz_app/data/quiz_interface.dart';
import 'package:flutter_quiz_app/data/quiz_question.dart';
import 'package:flutter_quiz_app/quizzes/quiz_model.dart';

class QuizModelAnatomy extends QuizModelInterface {

  @override
  QuizQuestion getQuestion(int index) => _questionBank[index];

  @override
  List<QuizQuestion> getQuestionBank() => _questionBank;

  final List<QuizQuestion> _questionBank = [
    //1
    QuizQuestion(
      questionText: 'Where is the smallest bone in the human body located?',
      choice1: 'Fingers',
      choice2: 'Toes',
      choice3: 'Inner Ear',
      choice4: 'Mouth',
      answer: QuizChoice.Choice3,
      explanation:
          'The smallest bone in the human body is the stapes, which is located in the inner ear.',
    ),
    //2
    QuizQuestion(
      questionText: 'What is the largest organ in the human body?',
      choice1: 'Liver',
      choice2: 'Skin',
      choice3: 'Stomach',
      choice4: 'Brain',
      answer: QuizChoice.Choice2,
      explanation:
          'The largest organ in the human body is the skin.\n\nHowever, the largest internal organ in the human body is the liver.',
    ),
    //3
    QuizQuestion(
      questionText: 'Where is the strongest muscle in the human body located?',
      choice1: 'Face',
      choice2: 'Arms',
      choice3: 'Legs',
      choice4: 'Hips',
      answer: QuizChoice.Choice1,
      explanation:
          'The strongest muscle in the human body is the \'masseter\' - the jaw muscle.',
    ),
    //4
    QuizQuestion(
      questionText: 'How many chambers does the human heart have?',
      choice1: '6',
      choice2: '5',
      choice3: '4',
      choice4: '3',
      answer: QuizChoice.Choice3,
      explanation:
          'The human heart has four chambers: the right atrium, the right ventricle, the left atrium, and the left ventricle.',
    ),
    //5
    QuizQuestion(
      questionText: 'The RIGHT ATRIUM in the human heart:',
      choice1: 'receives blood from the lungs',
      choice2: 'receives blood from the body',
      choice3: 'pumps blood to the lungs',
      choice4: 'pumps blood to the body',
      answer: QuizChoice.Choice2,
      explanation:
          'The right atrium receives deoxygenated blood from the body.',
    ),
    //6
    QuizQuestion(
      questionText: 'The LEFT ATRIUM in the human heart:',
      choice1: 'receives blood from the lungs',
      choice2: 'receives blood from the body',
      choice3: 'pumps blood to the lungs',
      choice4: 'pumps blood to the body',
      answer: QuizChoice.Choice1,
      explanation: 'The left atrium receives oxygenated blood from the lungs.',
    ),
    //7
    QuizQuestion(
      questionText: 'The RIGHT VENTRICLE in the human heart:',
      choice1: 'receives blood from the lungs',
      choice2: 'receives blood from the body',
      choice3: 'pumps blood to the lungs',
      choice4: 'pumps blood to the body',
      answer: QuizChoice.Choice3,
      explanation: 'The right ventricle pumps deoxygenated blood to the lungs.',
    ),
    //8
    QuizQuestion(
      questionText: 'The LEFT VENTRICLE in the human heart:',
      choice1: 'receives blood from the lungs',
      choice2: 'receives blood from the body',
      choice3: 'pumps blood to the lungs',
      choice4: 'pumps blood to the body',
      answer: QuizChoice.Choice4,
      explanation: 'The left ventricle pumps oxygenated blood to the body.',
    ),
    //9
    QuizQuestion(
      questionText: 'The hyoid bone is located...',
      choice1: 'in the fingers',
      choice2: 'in the toes',
      choice3: 'in the inner ear',
      choice4: 'in the neck',
      answer: QuizChoice.Choice4,
      explanation: 'The hyoid bone is located in the neck.',
    ),
    //10
    QuizQuestion(
      questionText: 'How many bones are in the human body?',
      choice1: '206',
      choice2: '216',
      choice3: '226',
      choice4: '236',
      answer: QuizChoice.Choice1,
      explanation: 'There are 206 bones in the human body.',
    ),
  ];
}
