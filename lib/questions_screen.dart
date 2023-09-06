import 'package:flutter/material.dart';
import 'package:quiz_app/answers_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Ask question!',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          const SizedBox(
            height: 20,
          ),
          AnswersButton(answerText: 'answer-1', onTap: () {}),
          AnswersButton(answerText: 'answer-2', onTap: () {}),
          AnswersButton(answerText: 'answer-3', onTap: () {}),
          AnswersButton(answerText: 'answer-4', onTap: () {}),
        ],
      ),
    );
  }
}
