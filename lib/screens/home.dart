import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/widgets/catigories.dart';
import 'package:quiz_app/widgets/navigation_drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* bottomNavigationBar: Container(
        height: 80.0,
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        color: normal,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home_outlined,
                color: Color(0xFF1860A3),
                size: 40.0,
              ),
              Icon(
                Icons.quiz,
                color: Color(0xFF1860A3),
                size: 40.0,
              ),
              Icon(
                Icons.logout,
                color: Color(0xFF1860A3),
                size: 40.0,
              ),
            ],
          ),
        ),
      ), */
      backgroundColor: background,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: background,
        shadowColor: Colors.transparent,
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Transform.rotate(
                origin: Offset(30, -60),
                angle: 2.4,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 75.0,
                    top: 40,
                  ),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      colors: [normal, Colors.pink],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 70.0,
                ),
                child: Column(
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        color: normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 65.0,
                      ),
                    ),
                    Text(
                      'Quiz App',
                      style: TextStyle(
                        //color: normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Catigories(
                                color: Color(0xFF852167),
                                icon: Icons.yard,
                                text: 'Art',
                                index: 0,
                              ),
                              Catigories(
                                color: Color(0xFF852167),
                                icon: Icons.workspaces,
                                text: 'Mathematics',
                                index: 1,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Catigories(
                                color: Color(0xFF852167),
                                icon: Icons.accessibility_new_sharp,
                                text: 'Sports',
                                index: 2,
                              ),
                              Catigories(
                                color: Color(0xFF852167),
                                icon: Icons.airplay,
                                text: 'Movies',
                                index: 3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
