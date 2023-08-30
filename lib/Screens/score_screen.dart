import 'package:flutter/material.dart';
import 'package:mohamed_quizApp/Global/quiz_data.dart';
import 'package:mohamed_quizApp/Screens/category_screen.dart';
import 'package:mohamed_quizApp/Screens/opening_screen.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalNumOfQuestion;
   ScoreScreen(
    {super.key,required this.totalScore,required this.totalNumOfQuestion});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                   RichText(
                text: TextSpan(
                    text: "Congratulations ",
                   style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Dancingscript',
                  fontSize: 50),
                    children: [
                  TextSpan(
                      text: "${userNameController.text} \n",
                      style: TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                  const TextSpan(text: "your score is "),
           
                  TextSpan(
                      text:
                          "${widget.totalScore} / ${widget.totalNumOfQuestion}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 196, 12, 52),
                          fontSize: 25)),
                ])),
            
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  
                  
                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const OpeningScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text("play again", style: TextStyle(fontSize: 30)),
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

   @override
  void dispose() {
   
    super.dispose();

    userNameController.clear();
    
  }
}

 
