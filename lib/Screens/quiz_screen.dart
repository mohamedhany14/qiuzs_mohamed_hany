import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_iti_823/Screens/score_screen.dart';

List quizChoices = ["orange", "red", "blue"];

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(" test" ),
          leading: const Center(
              child: Text(
            "1/1",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),
              child: Icon(Icons.quiz_rounded),
            )
          ],
        ),
      
    
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: const Column(
            children: [
              Align(alignment: Alignment.topLeft),
              Text(
                "Question 1",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Dancingscript',
                    decoration: TextDecoration.underline),
              ),
              Text(
                "what colour is orange?",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'DancingScript',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        const Text(
          "make your chice:",
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'DancingScript',
          ),
        ),
        for (int i = 0; i < 3; i++)
          Container(
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => ScoreScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              child: Center(
                child: Text(
                  quizChoices[i],
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Dancingscript',
                  ),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
