import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/Art_quiz.dart';
import 'package:quiz_app/screens/Login.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/screens/math_quiz.dart';
import 'package:quiz_app/screens/movie_quiz.dart';
import 'package:quiz_app/screens/score.dart';
import 'package:quiz_app/screens/sport_quiz.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.indigo[900],
        child: ListView(
          padding: padding,
          children: <Widget>[
            //buildHeader(),
            const SizedBox(height: 80.0),
            Text(
              'Heba Raslan',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Maths Quiz',
              icon: Icons.workspaces,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Art Quiz',
              icon: Icons.yard,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Sport Quiz',
              icon: Icons.accessibility_new_sharp,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Movie Quiz',
              icon: Icons.airplay,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Logout',
              icon: Icons.logout,
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 48),
            Text(
              'Good',
              style: TextStyle(
                  color: Colors.indigo[300],
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Consistancy',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

/*   Widget buildHeader() => InkWell(
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 50,
                child: const Text(
                  'HR',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.indigo[300],
                child: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ],
          ),
        ),
      ); */

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final icolor = Colors.indigo[300];
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: icolor),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Home(),
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
            builder: (context) => ArtQuiz(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SportQuiz(),
          ),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MovieQuiz(),
          ),
        );
        break;
      case 5:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
        break;
    }
  }
}
