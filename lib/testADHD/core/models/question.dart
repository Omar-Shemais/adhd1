class Question {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  Question({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  }) : assert(answers.contains(correctAnswer), 'answers$answers must contains correctAnswer($correctAnswer)');

  static final List<Question> questions = [
    Question(
      question: "Your child ...",
      answers: ['boy', "girl", ],
      correctAnswer: 'boy',
    ),
    Question(
      question: "Dose your child tend to Avoid or delay getting started on an important task ...?",
      answers: ['Somtimes', "Never", "Rarely", "Often"],
      correctAnswer: 'Often',
    ),
    Question(
      question: "Dose your child have difficulty concentraing or listening when spoken to directly ...?",
      answers: ['Somtimes', "Never", "Rarely", "Often"],
      correctAnswer: 'Often',
    ),
    Question(
      question: "dose your child fail regulary to remember important things ...?",
     answers: ['Somtimes', "Never", "Rarely", "Often"],
      correctAnswer: 'Often',
    ),
    Question(
      question: "Dose your child frequently misplace thing or have difficulty finding them ...?",
      answers: ['Somtimes', "Never", "Rarely", "Often"],
      correctAnswer: 'Often',
    ),
     Question(
      question: "Dose your child find it haard to remain focused ...?",
      answers: ['Somtimes', "Never", "Rarely", "Often"],
      correctAnswer: 'Often',
    ),
     Question(
      question: "Dose your child have mood swings,somtetimes feeling quite high,other time low ...?",
      answers: ['Somtimes', "Never", "Rarely", "Often"],
      correctAnswer: 'Often',
    ),
     Question(
      question: "what do you want your child to get out of this app ...?",
      answers: ['Somtimes', "Never", "Rarely", "Often"],
      correctAnswer: 'Often',
    ),
  ];
}