import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_iti_823/Screens/score_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text("Sport test"),
          leading: const Center(
              child: Text(
            "1/10",
            style: TextStyle(fontWeight: FontWeight.w700),
          )),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),
              child: Icon(Icons.access_alarm_rounded),
            )
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Q.3 : How many players in the football team ",
                    style: GoogleFonts.amaranth(
                        color: const Color.fromARGB(255, 244, 54, 219),
                        fontSize: 25),
                  ),
                ),
                for (int i = 0; i < 4; i++)
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ScoreScreen(),
                          ),
                        );
                      },
                      child: Text("${9 + i}")),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ));
  }
}
