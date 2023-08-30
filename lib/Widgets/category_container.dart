import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohamed_quizApp/Global/quiz_data.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    // super.key,
    required this.index,
  });

  List quizName = [
    "Sport Test",
    "History Test",
    "IQ Test",
    "English test",
    "Math test",
    "sciense test"
  ];
  List quizColor = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(
                categoryMap: dataBase[index],
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style: GoogleFonts.actor(
                  fontSize: 35, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}
