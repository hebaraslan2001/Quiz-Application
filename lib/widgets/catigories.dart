import 'package:flutter/material.dart';
import 'package:quiz_app/screens/Art_quiz.dart';
import 'package:quiz_app/screens/math_quiz.dart';
import 'package:quiz_app/screens/movie_quiz.dart';
import 'package:quiz_app/screens/sport_quiz.dart';

class Catigories extends StatelessWidget {
  const Catigories({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
    required this.index,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 177.0,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color(0x9F7863B1),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$text',
              style: TextStyle(
                fontSize: 25.0,
                color: Color(0xFF2C1852),
              ),
            ),
            Icon(
              icon,
              size: 100.0,
              color: color,
            ),
          ],
        ),
      ),
      onTap: () => selectedItem(context, index),
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ArtQuiz(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MathQuiz(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SportQuiz(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieQuiz(),
          ),
        );
        break;
    }
  }
}
