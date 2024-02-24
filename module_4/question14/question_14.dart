import 'package:flutter/material.dart';

class Question14 extends StatefulWidget {
  const Question14({super.key});

  @override
  State<Question14> createState() => _Question14State();
}

class _Question14State extends State<Question14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 14'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            showAlertDialog(context);
          },
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }

  Future<void> showAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(Icons.account_circle_rounded),
        title: Text('Alert'),
        content: Text('Are you sure.....'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('Delete'),
          )
        ],
      ),
    );
  }
}
