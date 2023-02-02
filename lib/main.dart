import 'package:flutter/material.dart';
import 'package:quiz_app/screens/Login.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignUp()
      },
    );
  }
}

/* class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Login(),
      );
} */
