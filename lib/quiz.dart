import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class QuizLayout extends StatefulWidget {
  const QuizLayout({super.key});

  @override
  State<QuizLayout> createState() {
    return _QuizLayoutState();
  }
}

class _QuizLayoutState extends State<QuizLayout> {
  var activeState = 'start-screen';

  //Use type Widget when we are dealing with 2 different widgets.
  // Ex:- here StartScreen at initialized makes activeState of type StartScreen if used var keyword not Widget.
  // due to this, cast error will come at activeState = QuizQuestions();

  //MORE WAYS OF DOING THE SAME IS REMAINING..........................

  //@override
  // void initState() {
  //   var activeState = const QuizQuestions();
  //   super.initState();
  // }

  void changeScreen() {
    setState(() {
      activeState = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(changeScreen);

    if(activeState == 'question-screen'){
      screenWidget = const QuizQuestions();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.blueAccent,
            ]),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
