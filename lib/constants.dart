import 'package:flutter/material.dart';

const Color correct = Colors.green;
const Color incorrect = Colors.red;
const Color normal = Colors.white70;
const Color background = Colors.indigo;

//  https://opentdb.com/api.php?amount=10&category=19&difficulty=easy&type=multiple

/* {"response_code":0,"results":[{"category":"Science: Mathematics",
                                "type":"multiple",
                                "difficulty":"medium",
                                "question":"What is the area of a circle with a diameter of 20 inches if &pi;= 3.1415?",
                                "correct_answer":"314.15 Inches",
                                "incorrect_answers":["380.1215 Inches",
                                                    "3141.5 Inches",
                                                    "1256.6 Inches"]},
{"category":"Science: Mathematics","type":"multiple","difficulty":"easy","question":"In Roman Numerals, what does XL equate to?","correct_answer":"40","incorrect_answers":["60","15","90"]},
{"category":"Science: Mathematics","type":"multiple","difficulty":"medium","question":"What is the first Mersenne prime exponent over 1000?","correct_answer":"1279","incorrect_answers":["2203","1009","1069"]},{"category":"Science: Mathematics","type":"boolean","difficulty":"medium","question":"The proof for the Chinese Remainder Theorem used in Number Theory was NOT developed by its first publisher, Sun Tzu.","correct_answer":"True","incorrect_answers":["False"]},{"category":"Science: Mathematics","type":"multiple","difficulty":"easy","question":"What is the symbol for Displacement?","correct_answer":"&Delta;r","incorrect_answers":["dr","Dp","r"]},{"category":"Science: Mathematics","type":"multiple","difficulty":"easy","question":"How many sides does a heptagon have?","correct_answer":"7","incorrect_answers":["8","6","5"]},{"category":"Science: Mathematics","type":"boolean","difficulty":"hard","question":"In Topology, the complement of an open set is a closed set.","correct_answer":"True","incorrect_answers":["False"]},{"category":"Science: Mathematics","type":"multiple","difficulty":"medium","question":"Which of the following dice is not a platonic solid?","correct_answer":"10-sided die","incorrect_answers":["12-sided die","20-sided die","8-sided die"]},{"category":"Science: Mathematics","type":"multiple","difficulty":"medium","question":"Which mathematician refused the Fields Medal?","correct_answer":"Grigori Perelman","incorrect_answers":["Andrew Wiles","Terence Tao","Edward Witten"]},{"category":"Science: Mathematics","type":"multiple","difficulty":"hard","question":"What is the fourth digit of &pi;?","correct_answer":"1","incorrect_answers":["2","3","4"]}]} */