class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); //shuffled new list copied from old one, thus old remains unchanged
    shuffledList.shuffle();
    return shuffledList;
  }
}
