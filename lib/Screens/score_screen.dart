import 'package:flutter/material.dart';
import 'package:quizz_iti_823/Screens/opening_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello, Mohamed Your score is 1/1",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Dancingscript',
                  fontSize: 60),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const OpeningScreen(),
                    ),
                  );
                },
                child: const Text("Reset", style: TextStyle(fontSize: 30)),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                )),
          ]),
    );
  }
}
