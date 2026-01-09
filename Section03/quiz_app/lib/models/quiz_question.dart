class QuizQuestion {
  final String questionText;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List<String>.from(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }

  const QuizQuestion(this.questionText, this.answers);
}
