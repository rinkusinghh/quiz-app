import 'package:flutter/material.dart';
import 'package:quiz_app/answers_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,
              style: const TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(
            height: 20,
          ),
          AnswersButton(answerText: currentQuestion.answers[0], onTap: () {}),
          AnswersButton(answerText: currentQuestion.answers[1], onTap: () {}),
          AnswersButton(answerText: currentQuestion.answers[2], onTap: () {}),
          AnswersButton(answerText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
