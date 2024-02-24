import 'package:assignment/module_4/question17/question_17.dart';
import 'package:flutter/material.dart';

class Question26 extends StatelessWidget {
  const Question26({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 26'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Question17(),
                    ));
              },
              child: Text('Click to Redirect'),
            )
          ],
        ),
      ),
    );
  }
}
