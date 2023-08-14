import 'package:flutter/material.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});
  @override
  State<QuizQuestions> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {
  @override
  Widget build(context) {
    return const Text("These is the first question");
  }

}