//afile that contains question blueprint
class QuizQuestion {
  const QuizQuestion(this.text,
      this.answers); //const function to reuse the class for diff txt ans ans

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // shuffledList = List.of(answers).shuffle();//this shuffles but doesnt return any ..so use below alternative
    final shuffledList =
        List.of(answers); //create a copy and store in a variable
    shuffledList.shuffle(); //change the list//doesnt overwrite
    return shuffledList; //return updated shuffled lsit
  }
}
