class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  // ignore: non_constant_identifier_names
  List<String> get ShuffledAnswers { //getter method
    final shuffledList = List.of(answers); //shuffled new list copied from old one, thus old remains unchanged
    shuffledList.shuffle();
    return shuffledList;
  }
}
