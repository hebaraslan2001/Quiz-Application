import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/widgets/navigation_drawer.dart';

class Score extends StatelessWidget {
  const Score({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: background,
        shadowColor: Colors.transparent,
        title: Text(
          'Score',
          style: TextStyle(
            color: normal,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                radius: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Score',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      '3/4',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
