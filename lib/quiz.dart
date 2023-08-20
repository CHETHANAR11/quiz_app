import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/result_screen.dart';

//parent of both startscreen and quest screen
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {//create a new State class called _QuizState by extending this
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //_class name private
  List<String> selectedAnswers = []; //store ans chosen by user
  var activeScreen = 'start-screen';
  //Widget? activeScreen; //passes pinter

  /* void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }*/
  /*/**/setState() wuld alwaysss recheck the build method like if there is any changeeeee */

  void switchScreen() {
    setState(() {//if the curr state is to be changed
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    //to add the selected ans one by one//76 video last
    selectedAnswers.add(answer); //builtinmethod used to add new item
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen); //pass pointer not method

    if (activeScreen == 'question-screen') { //the above condithon might be overwritten if the condition is true
      screenWidget = Question(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 186, 147, 166),
                Color.fromARGB(255, 235, 5, 82)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}


/*child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const Question(),*/ 