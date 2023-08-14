import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              // color: Colors.blue,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                // opacity: 0.4,
                image: AssetImage("assets/quiz-1.jpg"),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          const Text(
            "Learn Flutter the another way!",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(20),
            ),
            label: const Text("Start quiz"),
            icon: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
