import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Question15 extends StatefulWidget {
  const Question15({super.key});

  @override
  State<Question15> createState() => _Question15State();
}

class _Question15State extends State<Question15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 15'),
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
        title: Text('Alert'),
        content: Text('Select...'),
        actions: [
          TextButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'Positive Button Selected',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.grey.shade200,
                  textColor: Colors.black,
                  fontSize: 16.0
              );
              Navigator.pop(context, false);
            },
            child: Text('Positive',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TextButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'Negative Button Selected',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey.shade200,
                  textColor: Colors.black,
                  fontSize: 16.0
              );
              Navigator.pop(context, false);
            },
            child: Text('Negative',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TextButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'Neutral Button Selected',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey.shade200,
                  textColor: Colors.black,
                  fontSize: 16.0
              );
              Navigator.pop(context, false);
            },
            child: Text('Neutral',
                style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
