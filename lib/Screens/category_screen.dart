import 'package:flutter/material.dart';
import 'package:quizz_iti_823/Screens/quiz_screen.dart';

import '../Widgets/category_container.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            CategoryContainer(
              index: i,
            )

        
        ],
      ),
    );
  }
}
