class QuizQuestion{
  //constructer
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers ;
  List<String> getSuffleAnswer(){
    final suffeledList = List.of(answers);
    suffeledList.shuffle();
    return suffeledList;
  }
}