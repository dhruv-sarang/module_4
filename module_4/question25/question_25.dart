import 'package:flutter/material.dart';

class Question25 extends StatefulWidget {
  @override
  _Question25State createState() => _Question25State();
}

class _Question25State extends State<Question25> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Center(
            child: CircleAvatar(
              radius: double.infinity,
              backgroundImage: AssetImage('assets/images/google.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 25'),
      ),
      body: Center(
        child: Text('Hello...', style: TextStyle(fontSize: 28)),
      ),
    );
  }
}
