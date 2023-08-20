import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key}); //forward to parent(stateless)
//startQuiz is an argu that contains a function as avalue
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(142, 246, 245, 245)),
        /*Opacity(
          opacity: 0.1,
          child: Image.asset('assets/images/quiz-logo.png', width: 200),
        ),*/
        const SizedBox(height: 28),
        Text('Lets quizz',
            style: GoogleFonts.tiltPrism(
              color: Colors.white,
              fontSize: 30,
            )),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start'), //whenicon->child x lable
        ),
      ]),
    );
  }
}
