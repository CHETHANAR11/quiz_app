import 'package:flutter/material.dart';

class QuestionIdetifier extends StatelessWidget {
  const QuestionIdetifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      //SizedBox can also be used but will not aloow in changing boxDecoration
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 112, 195, 214)
            : const Color.fromARGB(255, 14, 120, 234),
        borderRadius: BorderRadius.circular(100), //circle shape
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 11, 11, 11),
        ),
      ),
    );
  }
}
