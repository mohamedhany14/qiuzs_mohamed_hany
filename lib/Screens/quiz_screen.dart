import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mohamed_quizApp/Screens/score_screen.dart';
import 'category_screen.dart';
import '../Widgets/category_container.dart';

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  QuizScreen({super.key, required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: widget.categoryMap["color"],
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(widget.categoryMap["categoryName"]),
          leading: Center(
              child: Text(
            // ((widget. categoryMap["data"]["answers"] as List).length + 1).toString(),

            " ${index + 1} / ${(widget.categoryMap["data"] as List).length}",

            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),

              /// مهمةةةةةة
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
                    widget.categoryMap["data"][index]["question"],
                    style:
                        GoogleFonts.amaranth(color: Colors.black, fontSize: 25),
                  ),
                ),
                for (int i = 0;
                    i <
                        (widget.categoryMap["data"][index]["answers"] as List)
                            .length;
                    i++)
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: widget.categoryMap["color"]),
                      onPressed: () {
                        totalScore = totalScore +
                            widget.categoryMap["data"][index]["answers"][i]
                                ["score"] as int;

                        if (index + 1 <
                            (widget.categoryMap["data"] as List).length) {
                          setState(() {
                            index++;

                            // totalScore +=   widget.categoryMap["data"][index]["answers"][i]
                            // ["score"] as int;
                          });
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => ScoreScreen(
                                totalScore: totalScore,
                                totalNumOfQuestion: index + 1,
                                // totalNumOfQuestion: (widget.categoryMap["data"] as List).length,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(widget.categoryMap["data"][index]["answers"]
                          [i]["ans"])),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ));
  }
}


