import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizAPP(),
    );
  }
}

class QuizAPP extends StatefulWidget {
  const QuizAPP({super.key});

  @override
  State<QuizAPP> createState() => _QuizAPPState();
}

class _QuizAPPState extends State<QuizAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/quiz photo.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 140,
                  height: 140,
                ),
                Text(
                  'ITI Quiz app',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 60,
                      fontFamily: "pacifico"),
                ),
                Text(
                  'we are creative , enjoy our app',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: "pacifico",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
