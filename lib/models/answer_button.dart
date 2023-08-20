import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 247, 4, 105), //bk of button
        foregroundColor: Colors.white, //txt color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)), //shape of button
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
