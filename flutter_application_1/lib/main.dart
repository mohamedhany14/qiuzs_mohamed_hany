import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FacebookApp(),
    );
  }
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
