import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: SingleChildScrollView(
            child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        )));
  }
}

/*
SizedBox(
      height: 300,
      child: SingleChildScrollView(//scrollll the ans
        child: Column(
          children: summaryData.map((data) {
            //trasform the above list of maps to list of Widgets
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1)
                    .toString()), //typecast//within the sqbr the key of the value that you want to access
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(), //convert iterable object to list
        ),
      ),
    );*/