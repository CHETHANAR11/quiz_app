import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
//import 'package:quiz_app/models/quiz_question.dart';

class Question extends StatefulWidget {
  const Question({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<Question> createState() {
    return _Question();
  }
}

class _Question extends State<Question> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer); //forword the selected ans to parent
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];//index 0

    return SizedBox(
      //instead of wrap center
      width: double.infinity, //use as much width u can
      child: Container(
        margin: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //(verti)center the q and a
          crossAxisAlignment: CrossAxisAlignment.stretch, //horizon
          children: [
            Text(
              currentQuestion.text, //dot to access data stored in object
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //answerits like i in iteration//spreading
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(
                      answer); //when the button is tapped answerques will be called by passing the selected ans
                },
              );
              //widget
            })
          ],
        ),
      ),
    );
  }
}
//answers is a list of strings    )
            /*AnswerButton(
              answerText: currentQuestion.answers[0],
              onTap: () {},
            ),
            */