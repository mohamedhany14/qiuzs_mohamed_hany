import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_iti_823/Screens/login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, // the width of the device
        height: MediaQuery.of(context).size.height * 1, // hight of the device

        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/black019-720x1280.jpg"),
                fit: BoxFit.cover)),
        // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            /// first widget
            ///

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            // if (MediaQuery.of(context).orientation == Orientation.portrait)
            Image.asset(
              "Images/quizLogo.png",
              height: MediaQuery.of(context).size.height * 0.2,
            ),

            Text(
              "ITI Quiz App",
              style:
                  GoogleFonts.dancingScript(fontSize: 50, color: Colors.white),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "We are creative, enjoy our app",
              style: GoogleFonts.pacifico(fontSize: 30, color: Colors.white),
            ),

            Spacer(),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // انا هنا محتاج امتب الكود او الامر اللي هيخليني انفيجيت علي اللوجن

                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "next",
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      backgroundColor: Colors.teal,
                      //  elevation: 50,
                      minimumSize: Size(60, 40)),
                )),
          ],
        ),
      ),
    );
  }
}
