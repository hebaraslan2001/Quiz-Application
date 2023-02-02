import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/screens/score.dart';
import 'package:quiz_app/widgets/navigation_drawer.dart';
import 'package:quiz_app/widgets/next_button.dart';
import 'package:quiz_app/widgets/option_card.dart';
import 'package:quiz_app/widgets/question_widget.dart';
import 'package:quiz_app/widgets/result_box.dart';
import 'package:dio/dio.dart';
import '../constants.dart';

class MovieQuiz extends StatefulWidget {
  const MovieQuiz({Key? key}) : super(key: key);
  @override
  State<MovieQuiz> createState() => _MovieQuizState();
}

class _MovieQuizState extends State<MovieQuiz> {
  late List<Question> _questions;
  /* _questions = [
    Question(
      id: '10',
      title: 'What is 2 + 2',
      options: {'5': false, '30': false, '4': true, '10': false},
    ),
    Question(
      id: '11',
      title: 'What is 10 + 20',
      options: {'5': false, '30': true, '4': false, '10': false},
    ),
    Question(
      id: '12',
      title: 'What is 20 + 20',
      options: {'5': false, '30': false, '40': true, '10': false},
    ),
    Question(
      id: '13',
      title: 'What is 3 + 20',
      options: {'5': false, '30': false, '40': false, '23': true},
    ),
  ]; */

  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;

  @override
  void initState() {
    super.initState();
    Future(() {
      return Dio()
          .get<String>("https://opentdb.com/api.php?amount=10&category=11");
    }).then((value) {
      Map<String, dynamic> response = jsonDecode(value.data!);
      var questions = response["results"] as List;
      var output = <Question>[];
      for (var q in questions) {
        var options = <String, bool>{};
        for (var incorrect in q["incorrect_answers"] as List) {
          options.putIfAbsent(incorrect as String, () => false);
        }
        options.putIfAbsent(q["correct_answer"] as String, () => true);
        output.add(
          Question(
            id: q["question"],
            title: q["question"],
            options: options,
          ),
        );
      }
      setState(() {
        _questions = output;
      });
    });
  }

  void nextQuestion() {
    if (index == _questions.length - 1) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ResultBox(
                result: score,
                questionLength: _questions.length,
                onPressed: startOver,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please Select Any option'),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(vertical: 20.0),
          ),
        );
      }
    }
  }

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: background,
        shadowColor: Colors.transparent,
        title: Text(
          'Movie Quiz',
          style: TextStyle(
            color: normal,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Score: $score',
              style: const TextStyle(
                color: normal,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            QuestionWidget(
              question: _questions[index].title,
              indexAction: index,
              totalQuestion: _questions.length,
            ),
            const Divider(
              color: normal,
            ),
            const SizedBox(
              height: 25.0,
            ),
            for (int i = 0; i < _questions[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(
                    _questions[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _questions[index].options.keys.toList()[i],
                  color: isPressed
                      ? _questions[index].options.values.toList()[i] == true
                          ? correct
                          : incorrect
                      : normal,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
