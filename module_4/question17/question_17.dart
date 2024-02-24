import 'package:flutter/material.dart';

class Question17 extends StatefulWidget {
  const Question17({super.key});

  @override
  State<Question17> createState() => _Question17State();
}

class _Question17State extends State<Question17> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool exit = await showExitAlertDialog(context) ?? false;
        return exit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Question 17'),
        ),
        body: Center(
          child: Text('Show Exit Alert Dialog', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
        ),
      ),
    );
  }

  Future<bool> showExitAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        content: Text('Are you sure you want to exit',
            style: TextStyle(fontSize: 16)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text('Yes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('No',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
