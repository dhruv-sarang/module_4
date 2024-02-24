import 'package:flutter/material.dart';

import 'screen/output_screen.dart';

class Question28 extends StatefulWidget {
  @override
  _Question28State createState() => _Question28State();
}

class _Question28State extends State<Question28> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 28'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter first number',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter second number',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(num1Controller.text);
                  int num2 = int.parse(num2Controller.text);
                  int output = num1+num2;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OutputScreen(output: output),
                    ),
                  );
                },
                child: Text('Calculate Sum'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
